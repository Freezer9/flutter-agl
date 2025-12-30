# F1 to AGL Parser

Go service that parses F1 game UDP telemetry and forwards it to the AGL Flutter app using Protocol Buffers.

## Architecture

```
F1 Game (Port 20777) → Go Parser → Protobuf → AGL Flutter App (Port 20778)
```

## Setup

1. **Install dependencies:**
```bash
cd parser
go mod tidy
```

2. **Build:**
```bash
go build -o f1-parser main.go
```

3. **Run:**
```bash
./f1-parser
```

## Configuration

Edit constants in `main.go`:

- `F1_LISTEN_PORT = 20777` - Port where F1 game broadcasts UDP
- `AGL_TARGET_IP = "127.0.0.1"` - IP where AGL app is running
- `AGL_TARGET_PORT = 20778` - Port where AGL app listens

## F1 Game Setup

Enable UDP telemetry in F1 game settings:
- **F1 2024/2023:** Settings → Telemetry → UDP Telemetry → On
- **UDP Broadcast:** On
- **UDP Port:** 20777
- **UDP Format:** 2024 or 2023

## Testing

1. Start the parser:
```bash
cd parser
go run main.go
```

2. Start AGL Flutter app:
```bash
cd ..
flutter run
```

3. Launch F1 game with UDP telemetry enabled

4. Data should flow automatically

## Protobuf Schema

The parser uses `car_telemetry.proto` located in `protos/protos/f1/`. To regenerate:

```bash
cd ..
protoc --proto_path=protos/protos \
       --go_out=protos/lib \
       --dart_out=protos/lib \
       protos/protos/f1/car_telemetry.proto
```

## Troubleshooting

- **No data received:** Check firewall settings for UDP ports 20777 and 20778
- **Build errors:** Run `go mod tidy` to fetch dependencies
- **Import errors:** Ensure the replace directive in `go.mod` points to the correct protobuf path
