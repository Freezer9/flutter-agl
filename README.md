# Flutter ICS Homescreen for Automotive Grade Linux (AGL)

> **CUSTOM VERSION** - Based on TROUT BRANCH from Gerrit AGL  
> Modified for Final Project: Implementation and Performance Analysis of Automotive Grade Linux

A customizable and feature-rich homescreen application for AGL-based automotive systems, built using Flutter. This project aims to provide an intuitive and visually appealing interface for in-car infotainment systems.

---

## 🎯 Project Purpose

This is a modified version of the Flutter ICS Homescreen developed for a **final project implementing and examining the performance characteristics of Automotive Grade Linux (AGL)**. The modifications focus on optimizing data communication protocols and streamlining the architecture for performance benchmarking.

---

## 📝 Major Modifications from Original AGL Version

### ✅ Features Added

1. **Protocol Buffer-based Telemetry System**
   - Implemented custom vehicle telemetry using Protocol Buffers (protobuf)
   - Support for dual data formats:
     - **F1 Telemetry Format**: Full race car telemetry data (from F1 2024 game)
     - **Simulator Binary Format**: Custom lightweight binary protocol for vehicle simulators

### ❌ Features Removed

1. **KUKSA.val / VSS Integration**
   - Removed KUKSA.val client completely
   - Eliminated Vehicle Signal Specification (VSS) path dependencies
   - Removed all kuksa/val protobuf generated files
   - Deleted VSS signal subscription and handling logic

### 🔄 Architecture Changes

**Before:**
```
Interface can0 -> Kuksa CAN Provider (DBC and VSS) -> KUKSA.val DataBroker → VAL Client → Notifiers → UI
```

**After:**
```
UDP Port 20778 → Vehicle Client → Vehicle Notifier → UI
```

---

## 🚀 Key Features

### Data Communication
- **Dual Protocol Support**: F1 telemetry (protobuf) and simulator binary format
- **High-Performance UDP**: Direct UDP socket communication on port 20778
- **Zero External Dependencies**: No KUKSA.val or external data brokers required

---

## 📊 Performance Optimization Goals

This version is optimized for:
1. **Lower Latency**: Direct UDP communication without broker middleware
2. **Reduced Memory Footprint**: Eliminated KUKSA.val and gRPC overhead
3. **Simplified Data Path**: Direct state updates without signal subscription
4. **Faster Response Time**: Removed external service API calls for controls

---

## 🛠️ Technical Stack

- **Framework**: Flutter
- **State Management**: Riverpod
- **Data Protocol**: Protocol Buffers (protobuf)
- **Communication**: UDP Sockets (port 20778)
- **Architecture**: Clean Architecture with notifiers

---

## 📁 Project Structure

```
lib/
├── data/
│   ├── data_providers/
│   │   ├── client/
│   │   │   └── vehicle_client.dart       # UDP client for telemetry
│   │   └── notifier/
│   │       └── vehicle_notifier.dart     # Vehicle state management
│   └── models/
│       └── vehicle.dart                  # Vehicle data model
├── presentation/
│   ├── screens/
│   │   ├── dashboard/                    # Main dashboard UI
│   │   ├── hvac/                         # Climate controls
│   │   ├── media/                        # Media player
│   │   └── settings/                     # Settings screens
│   └── widget/                           # Reusable widgets
└── core/
    └── constants/                        # App constants

protos/
├── protos/
│   ├── f1/                               # F1 telemetry definitions
│   └── vehicle/
│       └── create.proto                  # Simulator telemetry format
└── lib/
    ├── vehicle_api.dart                  # Vehicle proto exports
    └── generated/                        # Generated protobuf code
```

---

## 🔧 Data Formats Supported

### 1. F1 2024 Telemetry Format (Protobuf)
Full all racing telemetry data as defined in the F1 2024 game protobuf schema.

### 2. Simulator Binary Format
Compact binary format for real-time simulation data:
```
Byte 0:     0xCA (Header)
Byte 1:     Message ID
Bytes 2-3:  Front Left Wheel Angle (int16)
Bytes 4-5:  Front Right Wheel Angle (int16)
Bytes 6-7:  Rear Left Wheel Angle (int16)
Bytes 8-9:  Rear Right Wheel Angle (int16)
Bytes 10-11: Vehicle Speed (uint16)
Byte 12:    Sequence/Checksum
```

---
