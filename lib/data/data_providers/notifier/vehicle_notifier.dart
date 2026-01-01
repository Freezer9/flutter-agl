import 'package:flutter_ics_homescreen/export.dart';
import 'package:protos/vehicle_api.dart' as proto;

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
      final vehicleMsg = proto.VehicleMessage.fromBuffer(data);

      switch (vehicleMsg.whichPayload()) {
        case proto.VehicleMessage_Payload.telemetry:
          _applyTelemetryToState(vehicleMsg.telemetry);
          break;
        case proto.VehicleMessage_Payload.status:
          _applyStatusToState(vehicleMsg.status);
          break;
        case proto.VehicleMessage_Payload.damage:
          _applyDamageToState(vehicleMsg.damage);
          break;
        default:
          debugPrint('Unknown or empty vehicle message');
      }
    } catch (e) {
      debugPrint('Error parsing vehicle protobuf: $e');
    }
  }

  void _applyTelemetryToState(proto.CarTelemetry telemetry) {
    state = state.copyWith(
      speed: telemetry.hasSpeed() ? telemetry.speed.toDouble() : state.speed,
      throttle: telemetry.throttle,
      brake: telemetry.brake,
      gear: telemetry.hasGear() ? telemetry.gear : state.gear,
      revLights: telemetry.hasRevLightsBitValue()
          ? telemetry.revLightsPercent
          : state.revLights,
      engineSpeed:
          telemetry.hasEngineRpm() ? telemetry.engineRpm : state.engineSpeed,
      // Tyres pressure array: [RL, RR, FL, FR]
      frontLeftTire: telemetry.tyresPressure.length > 2
          ? telemetry.tyresPressure[2].toInt()
          : state.frontLeftTire,
      frontRightTire: telemetry.tyresPressure.length > 3
          ? telemetry.tyresPressure[3].toInt()
          : state.frontRightTire,
      rearLeftTire: telemetry.tyresPressure.isNotEmpty
          ? telemetry.tyresPressure[0].toInt()
          : state.rearLeftTire,
      rearRightTire: telemetry.tyresPressure.length > 1
          ? telemetry.tyresPressure[1].toInt()
          : state.rearRightTire,
      engineTemperature: telemetry.hasEngineTemperature()
          ? telemetry.engineTemperature.toDouble()
          : state.engineTemperature,

      frontLeftBrakeTemperature: telemetry.brakesTemperature.length > 2
          ? telemetry.brakesTemperature[2].toInt()
          : state.frontLeftBrakeTemperature,
      frontRightBrakeTemperature: telemetry.brakesTemperature.length > 3
          ? telemetry.brakesTemperature[3].toInt()
          : state.frontRightBrakeTemperature,
      rearLeftBrakeTemperature: telemetry.brakesTemperature.isNotEmpty
          ? telemetry.brakesTemperature[0].toInt()
          : state.rearLeftBrakeTemperature,
      rearRightBrakeTemperature: telemetry.brakesTemperature.length > 1
          ? telemetry.brakesTemperature[1].toInt()
          : state.rearRightBrakeTemperature,

      frontLeftInnerTemperature: telemetry.tyresInnerTemperature.length > 2
          ? telemetry.tyresInnerTemperature[2].toInt()
          : state.frontLeftInnerTemperature,
      frontRightInnerTemperature: telemetry.tyresInnerTemperature.length > 3
          ? telemetry.tyresInnerTemperature[3].toInt()
          : state.frontRightInnerTemperature,
      rearLeftInnerTemperature: telemetry.tyresInnerTemperature.isNotEmpty
          ? telemetry.tyresInnerTemperature[0].toInt()
          : state.rearLeftInnerTemperature,
      rearRightInnerTemperature: telemetry.tyresInnerTemperature.length > 1
          ? telemetry.tyresInnerTemperature[1].toInt()
          : state.rearRightInnerTemperature,

      frontLeftSurfaceTemperature: telemetry.tyresSurfaceTemperature.length > 2
          ? telemetry.tyresSurfaceTemperature[2].toInt()
          : state.frontLeftSurfaceTemperature,
      frontRightSurfaceTemperature: telemetry.tyresSurfaceTemperature.length > 3
          ? telemetry.tyresSurfaceTemperature[3].toInt()
          : state.frontRightSurfaceTemperature,
      rearLeftSurfaceTemperature: telemetry.tyresSurfaceTemperature.isNotEmpty
          ? telemetry.tyresSurfaceTemperature[0].toInt()
          : state.rearLeftSurfaceTemperature,
      rearRightSurfaceTemperature: telemetry.tyresSurfaceTemperature.length > 1
          ? telemetry.tyresSurfaceTemperature[1].toInt()
          : state.rearRightSurfaceTemperature,

      drsMode: telemetry.drs == 1 ? true : false,
    );
  }

  void _applyStatusToState(proto.CarStatus status) {
    double ersPercent = state.batteryLevel.toDouble();

    if (status.hasErsStoreEnergy()) {
      final ersJoules = status.ersStoreEnergy;
      ersPercent = ((ersJoules / maxERSJoules) * 100).round().toDouble();
      ersPercent = ersPercent.clamp(0, 100);
    }

    state = state.copyWith(
      batteryLevel: ersPercent.toInt(),
      ersMode: status.hasErsDeployMode() ? status.ersDeployMode : state.ersMode,
    );
  }

  void _applyDamageToState(proto.CarDamageData damage) {
    state = state.copyWith(
      frontLeftTireWear: damage.tyresWear.length > 2
          ? damage.tyresWear[2].toInt()
          : state.frontLeftTireWear,
      frontRightTireWear: damage.tyresWear.length > 3
          ? damage.tyresWear[3].toInt()
          : state.frontRightTireWear,
      rearLeftTireWear: damage.tyresWear.isNotEmpty
          ? damage.tyresWear[0].toInt()
          : state.rearLeftTireWear,
      rearRightTireWear: damage.tyresWear.length > 1
          ? damage.tyresWear[1].toInt()
          : state.rearRightTireWear,
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
