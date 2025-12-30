package main

import (
	"log"
	"math/rand"
	"net"
	"time"

	pb "github.com/agl/homescreen/protos/f1"
	"google.golang.org/protobuf/proto"
)

const (
	AGL_TARGET_IP   = "127.0.0.1"
	AGL_TARGET_PORT = 20778
)

// Mock telemetry sender for testing without F1 game
func main() {
	addr := &net.UDPAddr{
		IP:   net.ParseIP(AGL_TARGET_IP),
		Port: AGL_TARGET_PORT,
	}

	conn, err := net.DialUDP("udp", nil, addr)
	if err != nil {
		log.Fatalf("Failed to connect: %v", err)
	}
	defer conn.Close()

	log.Printf("Sending mock F1 telemetry to %s:%d", AGL_TARGET_IP, AGL_TARGET_PORT)
	log.Println("Press Ctrl+C to stop")

	ticker := time.NewTicker(100 * time.Millisecond) // 10Hz update rate
	defer ticker.Stop()

	speed := float32(0.0)
	gear := int32(1)
	throttle := float32(0.0)

	for range ticker.C {
		// Simulate acceleration
		if throttle < 1.0 {
			throttle += 0.01
		}
		if speed < 320 {
			speed += 2.0
		}
		if speed > 100 && gear < 8 {
			gear++
			speed = float32(gear) * 40
		}

		telemetry := &pb.CarTelemetry{
			Speed:                  speed,
			Throttle:               throttle,
			Brake:                  0.0,
			Gear:                   gear,
			EngineRpm:              8000 + rand.Float32()*3000,
			Drs:                    float32(rand.Intn(2)),
			FrontLeftTyrePressure:  23.2 + rand.Float32()*0.5,
			FrontRightTyrePressure: 23.3 + rand.Float32()*0.5,
			RearLeftTyrePressure:   22.1 + rand.Float32()*0.5,
			RearRightTyrePressure:  22.2 + rand.Float32()*0.5,
			FrontLeftWheelAngle:    -5.0 + rand.Float32()*10,
			FrontRightWheelAngle:   -5.0 + rand.Float32()*10,
		}

		data, err := proto.Marshal(telemetry)
		if err != nil {
			log.Printf("Error marshaling: %v", err)
			continue
		}

		_, err = conn.Write(data)
		if err != nil {
			log.Printf("Error sending: %v", err)
			continue
		}

		log.Printf("Sent: Speed=%.0f km/h, Gear=%d, RPM=%.0f", 
			telemetry.Speed, telemetry.Gear, telemetry.EngineRpm)
	}
}
