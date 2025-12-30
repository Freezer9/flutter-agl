package main

import (
	"encoding/binary"
	"fmt"
	"log"
	"net"
	"unsafe"

	pb "github.com/agl/homescreen/protos/f1" // Adjust import path as needed
	"google.golang.org/protobuf/proto"
)

const (
	F1_LISTEN_PORT = 20777 // F1 game UDP port
	AGL_TARGET_IP  = "127.0.0.1"
	AGL_TARGET_PORT = 20778 // AGL Flutter app port
)

// F1 2024 UDP Packet Header
type PacketHeader struct {
	PacketFormat            uint16
	GameYear                uint8
	GameMajorVersion        uint8
	GameMinorVersion        uint8
	PacketVersion           uint8
	PacketId                uint8
	SessionUID              uint64
	SessionTime             float32
	FrameIdentifier         uint32
	OverallFrameIdentifier  uint32
	PlayerCarIndex          uint8
	SecondaryPlayerCarIndex uint8
}

// F1 Car Telemetry Data (per car)
type CarTelemetryData struct {
	Speed                   uint16
	Throttle                float32
	Steer                   float32
	Brake                   float32
	Clutch                  uint8
	Gear                    int8
	EngineRPM               uint16
	DRS                     uint8
	RevLightsPercent        uint8
	RevLightsBitValue       uint16
	BrakesTemperature       [4]uint16
	TyresSurfaceTemperature [4]uint8
	TyresInnerTemperature   [4]uint8
	EngineTemperature       uint16
	TyresPressure           [4]float32
	SurfaceType             [4]uint8
}

type F1Parser struct {
	f1Conn   *net.UDPConn
	aglConn  *net.UDPConn
	aglAddr  *net.UDPAddr
}

func NewF1Parser() (*F1Parser, error) {
	// Listen for F1 game data
	f1Addr := &net.UDPAddr{
		IP:   net.IPv4zero,
		Port: F1_LISTEN_PORT,
	}
	f1Conn, err := net.ListenUDP("udp", f1Addr)
	if err != nil {
		return nil, fmt.Errorf("failed to listen on F1 port: %v", err)
	}

	// Setup connection to send to AGL
	aglAddr := &net.UDPAddr{
		IP:   net.ParseIP(AGL_TARGET_IP),
		Port: AGL_TARGET_PORT,
	}
	aglConn, err := net.DialUDP("udp", nil, aglAddr)
	if err != nil {
		f1Conn.Close()
		return nil, fmt.Errorf("failed to setup AGL connection: %v", err)
	}

	return &F1Parser{
		f1Conn:  f1Conn,
		aglConn: aglConn,
		aglAddr: aglAddr,
	}, nil
}

func (p *F1Parser) Start() error {
	log.Printf("F1 Parser started")
	log.Printf("Listening for F1 game on port %d", F1_LISTEN_PORT)
	log.Printf("Forwarding to AGL at %s:%d", AGL_TARGET_IP, AGL_TARGET_PORT)

	buffer := make([]byte, 2048)

	for {
		n, _, err := p.f1Conn.ReadFromUDP(buffer)
		if err != nil {
			log.Printf("Error reading from F1: %v", err)
			continue
		}

		if n < 29 { // Minimum header size
			continue
		}

		// Parse packet
		p.handleF1Packet(buffer[:n])
	}
}

func (p *F1Parser) handleF1Packet(data []byte) {
	// Parse header
	packetId := data[5]

	// Packet ID 6 = Car Telemetry Data
	if packetId == 6 {
		telemetry := p.parseCarTelemetryPacket(data)
		if telemetry != nil {
			p.sendToAGL(telemetry)
		}
	}
}

func (p *F1Parser) parseCarTelemetryPacket(data []byte) *pb.CarTelemetry {
	if len(data) < 29 { // Header size
		return nil
	}

	// Skip header (29 bytes for F1 2024)
	offset := 29

	// Get player car index from header
	playerCarIndex := data[24]

	// Each car telemetry data is ~60 bytes
	// Skip to player's car data
	carDataSize := 60
	offset += int(playerCarIndex) * carDataSize

	if offset+carDataSize > len(data) {
		log.Printf("Packet too small for car telemetry data")
		return nil
	}

	// Parse car telemetry data using binary.LittleEndian
	carData := data[offset:]

	speed := binary.LittleEndian.Uint16(carData[0:2])
	throttle := readFloat32(carData[2:6])
	steer := readFloat32(carData[6:10])
	brake := readFloat32(carData[10:14])
	gear := int8(carData[15])
	engineRPM := binary.LittleEndian.Uint16(carData[16:18])
	drs := carData[18]

	// Tire pressures start at offset ~42
	tyrePressureOffset := 42
	flPressure := readFloat32(carData[tyrePressureOffset : tyrePressureOffset+4])
	frPressure := readFloat32(carData[tyrePressureOffset+4 : tyrePressureOffset+8])
	rlPressure := readFloat32(carData[tyrePressureOffset+8 : tyrePressureOffset+12])
	rrPressure := readFloat32(carData[tyrePressureOffset+12 : tyrePressureOffset+16])

	// Create protobuf message
	telemetry := &pb.CarTelemetry{
		Speed:                  float32(speed),
		Throttle:               throttle,
		Brake:                  brake,
		Gear:                   int32(gear),
		EngineRpm:              float32(engineRPM),
		Drs:                    float32(drs),
		FrontLeftTyrePressure:  flPressure,
		FrontRightTyrePressure: frPressure,
		RearLeftTyrePressure:   rlPressure,
		RearRightTyrePressure:  rrPressure,
		FrontLeftWheelAngle:    steer, // Simplified - same for both
		FrontRightWheelAngle:   steer,
		RearLeftWheelAngle:     0.0,
		RearRightWheelAngle:    0.0,
	}

	return telemetry
}

func (p *F1Parser) sendToAGL(telemetry *pb.CarTelemetry) {
	// Serialize to protobuf binary
	data, err := proto.Marshal(telemetry)
	if err != nil {
		log.Printf("Error marshaling protobuf: %v", err)
		return
	}

	// Send to AGL
	_, err = p.aglConn.Write(data)
	if err != nil {
		log.Printf("Error sending to AGL: %v", err)
		return
	}

	// Optional: Log every 100th packet to avoid spam
	// log.Printf("Sent telemetry: Speed=%.0f, Gear=%d, RPM=%.0f", 
	//     telemetry.Speed, telemetry.Gear, telemetry.EngineRpm)
}

func (p *F1Parser) Close() {
	if p.f1Conn != nil {
		p.f1Conn.Close()
	}
	if p.aglConn != nil {
		p.aglConn.Close()
	}
}

// Helper to read float32 from byte slice
func readFloat32(b []byte) float32 {
	bits := binary.LittleEndian.Uint32(b)
	return *(*float32)(unsafe.Pointer(&bits))
}

func main() {
	parser, err := NewF1Parser()
	if err != nil {
		log.Fatalf("Failed to create parser: %v", err)
	}
	defer parser.Close()

	log.Println("F1 to AGL Parser running...")
	log.Println("Make sure:")
	log.Println("  1. F1 game UDP telemetry is enabled (port 20777)")
	log.Println("  2. AGL Flutter app is running and listening on port 20778")
	log.Println("Press Ctrl+C to stop")

	if err := parser.Start(); err != nil {
		log.Fatalf("Parser error: %v", err)
	}
}
