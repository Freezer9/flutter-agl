import 'package:flutter_ics_homescreen/export.dart';
import 'package:protos/vehicle_api.dart';

class VehicleNotifier extends Notifier<Vehicle> {
  @override
  Vehicle build() {
    return const Vehicle.initial();
  }

  void updateSpeed(double newValue) {
    state = state.copyWith(speed: newValue);
  }

  void updateFromProtobuf(Uint8List data) {
    try {
      final telemetry = SimulatorTelemetry.fromBuffer(data);
      _applyTelemetryToState(telemetry);
    } catch (e) {
      debugPrint('Error parsing vehicle telemetry protobuf: $e');
    }
  }

  void _applyTelemetryToState(SimulatorTelemetry telemetry) {
    state = state.copyWith(
      speed: telemetry.hasSpeed() ? telemetry.speed : state.speed,
      frontLeftAngle: telemetry.hasFrontLeftAngle()
          ? telemetry.frontLeftAngle
          : state.frontLeftAngle,
      frontRightAngle: telemetry.hasFrontRightAngle()
          ? telemetry.frontRightAngle
          : state.frontRightAngle,
      rearLeftAngle: telemetry.hasRearLeftAngle()
          ? telemetry.rearLeftAngle
          : state.rearLeftAngle,
      rearRightAngle: telemetry.hasRearRightAngle()
          ? telemetry.rearRightAngle
          : state.rearRightAngle,
    );
  }

  /// Format: 1b header (0xCA), 1b ID, 2b*4 angles, 2b speed, 1b checksum
  void updateFromBinaryData(Uint8List data) {
    try {
      if (data.length != 13) {
        debugPrint('Invalid binary packet size: ${data.length}');
        return;
      }

      // Skip header (data[0] = 0xCA)
      final id = data[1];

      // Parse angles as signed int16 (little-endian)
      final frontLeftAngle = _bytesToInt16(data[2], data[3]);
      final frontRightAngle = _bytesToInt16(data[4], data[5]);
      final rearLeftAngle = _bytesToInt16(data[6], data[7]);
      final rearRightAngle = _bytesToInt16(data[8], data[9]);

      // Parse speed as unsigned int16 (little-endian)
      final speed = _bytesToUint16(data[10], data[11]);

      final sequence = data[12];

      // Create simulator telemetry message
      final simTelemetry = SimulatorTelemetry()
        ..id = id
        ..frontLeftAngle = frontLeftAngle
        ..frontRightAngle = frontRightAngle
        ..rearLeftAngle = rearLeftAngle
        ..rearRightAngle = rearRightAngle
        ..speed = speed
        ..sequence = sequence;

      _applySimulatorTelemetry(simTelemetry);
    } catch (e) {
      debugPrint('Error parsing binary simulator data: $e');
    }
  }

  double _bytesToInt16(int low, int high) {
    final value = (high << 8) | low;
    return value > 32767 ? (value - 65536).toDouble() : value.toDouble();
  }

  double _bytesToUint16(int low, int high) {
    return ((high << 8) | low).toDouble();
  }

  void _applySimulatorTelemetry(SimulatorTelemetry telemetry) {
    state = state.copyWith(
      speed: telemetry.hasSpeed() ? telemetry.speed : state.speed,
      frontLeftAngle: telemetry.hasFrontLeftAngle()
          ? telemetry.frontLeftAngle
          : state.frontLeftAngle,
      frontRightAngle: telemetry.hasFrontRightAngle()
          ? telemetry.frontRightAngle
          : state.frontRightAngle,
      rearLeftAngle: telemetry.hasRearLeftAngle()
          ? telemetry.rearLeftAngle
          : state.rearLeftAngle,
      rearRightAngle: telemetry.hasRearRightAngle()
          ? telemetry.rearRightAngle
          : state.rearRightAngle,
    );
  }

  void setTemperature({required Side side, required int value}) {
    try {
      switch (side) {
        case Side.left:
          state = state.copyWith(driverTemperature: value);
          break;
        case Side.right:
          state = state.copyWith(passengerTemperature: value);
          break;
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  void setTemperatureSynced(bool newValue) {
    state = state.copyWith(temperatureSynced: newValue);
  }

  void updateFanSpeed(int newValue) {
    state = state.copyWith(fanSpeed: newValue);
  }

  void setHVACMode({required String mode}) {
    try {
      switch (mode) {
        case 'airCondition':
          state = state.copyWith(
              isAirConditioningActive: !state.isAirConditioningActive);
          break;
        case 'frontDefrost':
          state = state.copyWith(
              isFrontDefrosterActive: !state.isFrontDefrosterActive);
          break;
        case 'rearDefrost':
          state = state.copyWith(
              isRearDefrosterActive: !state.isRearDefrosterActive);
          break;
        case 'recirculation':
          state = state.copyWith(
              isRecirculationActive: !state.isRecirculationActive);
          break;
        default:
          debugPrint("ERROR: Unexpected mode value $mode");
          break;
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  void setInitialState() {
    state = const Vehicle.initial();
  }
}
