import 'package:flutter_ics_homescreen/export.dart';
import 'package:protos/f1/car_telemetry.pb.dart';

class F1TelemetryNotifier extends Notifier<Vehicle> {
  @override
  Vehicle build() {
    return const Vehicle.initial();
  }

  /// Update vehicle state from protobuf binary data
  void updateFromProtobuf(Uint8List data) {
    try {
      final telemetry = CarTelemetry.fromBuffer(data);
      _applyTelemetryToState(telemetry);
    } catch (e) {
      debugPrint('Error parsing F1 telemetry protobuf: $e');
    }
  }

  /// Update vehicle state from CarTelemetry object directly
  void updateFromTelemetry(CarTelemetry telemetry) {
    _applyTelemetryToState(telemetry);
  }

  /// Update vehicle state from JSON (if receiving JSON over network)
  void updateFromJson(String json) {
    try {
      final telemetry = CarTelemetry.fromJson(json);
      _applyTelemetryToState(telemetry);
    } catch (e) {
      debugPrint('Error parsing F1 telemetry JSON: $e');
    }
  }

  void _applyTelemetryToState(CarTelemetry telemetry) {
    state = state.copyWith(
      speed: telemetry.hasSpeed() ? telemetry.speed : state.speed,
      throttle: telemetry.hasThrottle() ? telemetry.throttle : state.throttle,
      brake: telemetry.hasBrake() ? telemetry.brake : state.brake,
      gear: telemetry.hasGear() ? telemetry.gear : state.gear,
      engineSpeed: telemetry.hasEngineRpm()
          ? telemetry.engineRpm.toInt()
          : state.engineSpeed,
      frontLeftTire: telemetry.hasFrontLeftTyrePressure()
          ? telemetry.frontLeftTyrePressure.toInt()
          : state.frontLeftTire,
      frontRightTire: telemetry.hasFrontRightTyrePressure()
          ? telemetry.frontRightTyrePressure.toInt()
          : state.frontRightTire,
      rearLeftTire: telemetry.hasRearLeftTyrePressure()
          ? telemetry.rearLeftTyrePressure.toInt()
          : state.rearLeftTire,
      rearRightTire: telemetry.hasRearRightTyrePressure()
          ? telemetry.rearRightTyrePressure.toInt()
          : state.rearRightTire,
      frontLeftAngle: telemetry.hasFrontLeftWheelAngle()
          ? telemetry.frontLeftWheelAngle
          : state.frontLeftAngle,
      frontRightAngle: telemetry.hasFrontRightWheelAngle()
          ? telemetry.frontRightWheelAngle
          : state.frontRightAngle,
      rearLeftAngle: telemetry.hasRearLeftWheelAngle()
          ? telemetry.rearLeftWheelAngle
          : state.rearLeftAngle,
      rearRightAngle: telemetry.hasRearRightWheelAngle()
          ? telemetry.rearRightWheelAngle
          : state.rearRightAngle,
    );
  }
}
