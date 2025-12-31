import '../../export.dart';

@immutable
class Vehicle {
  final double speed;
  final int engineSpeed;
  final double insideTemperature;
  final double outsideTemperature;
  final double engineTemperature;
  final int range;
  final int batteryLevel;

  final bool isAirConditioningActive;
  final bool isFrontDefrosterActive;
  final bool isRearDefrosterActive;
  final bool isRecirculationActive;
  final int fanSpeed;
  final int driverTemperature;
  final int passengerTemperature;
  final bool temperatureSynced;

  // Wheel Data
  final double frontLeftAngle;
  final double frontRightAngle;
  final double rearLeftAngle;
  final double rearRightAngle;

  final int frontLeftTire;
  final int frontRightTire;
  final int rearLeftTire;
  final int rearRightTire;

  final int frontLeftInnerTemperature;
  final int frontRightInnerTemperature;
  final int rearLeftInnerTemperature;
  final int rearRightInnerTemperature;

  final int frontLeftSurfaceTemperature;
  final int frontRightSurfaceTemperature;
  final int rearLeftSurfaceTemperature;
  final int rearRightSurfaceTemperature;

  final int frontLeftBrakeTemperature;
  final int frontRightBrakeTemperature;
  final int rearLeftBrakeTemperature;
  final int rearRightBrakeTemperature;

  final int frontLeftTireWear;
  final int frontRightTireWear;
  final int rearLeftTireWear;
  final int rearRightTireWear;

  final int gear;
  final double brake;
  final double throttle;
  final int revLights;
  final bool drsMode;
  final int ersMode;

  const Vehicle(
    this.speed,
    this.engineSpeed,
    this.insideTemperature,
    this.outsideTemperature,
    this.engineTemperature,
    this.range,
    this.batteryLevel,
    this.frontLeftTire,
    this.frontRightTire,
    this.rearLeftTire,
    this.rearRightTire,
    this.isAirConditioningActive,
    this.isFrontDefrosterActive,
    this.isRearDefrosterActive,
    this.isRecirculationActive,
    this.fanSpeed,
    this.driverTemperature,
    this.passengerTemperature,
    this.temperatureSynced,
    this.frontLeftAngle,
    this.frontRightAngle,
    this.rearLeftAngle,
    this.rearRightAngle,
    this.gear,
    this.brake,
    this.throttle,
    this.revLights,
    this.frontLeftInnerTemperature,
    this.frontRightInnerTemperature,
    this.rearLeftInnerTemperature,
    this.rearRightInnerTemperature,
    this.frontLeftSurfaceTemperature,
    this.frontRightSurfaceTemperature,
    this.rearLeftSurfaceTemperature,
    this.rearRightSurfaceTemperature,
    this.frontLeftBrakeTemperature,
    this.frontRightBrakeTemperature,
    this.rearLeftBrakeTemperature,
    this.rearRightBrakeTemperature,
    this.frontLeftTireWear,
    this.frontRightTireWear,
    this.rearLeftTireWear,
    this.rearRightTireWear,
    this.drsMode,
    this.ersMode,
  );

  const Vehicle.initial()
      : speed = 0,
        engineSpeed = 0,
        insideTemperature = 0,
        outsideTemperature = 0,
        engineTemperature = 0,
        range = 0,
        batteryLevel = 0,
        frontLeftTire = 228,
        frontRightTire = 214,
        rearLeftTire = 214,
        rearRightTire = 221,
        isAirConditioningActive = false,
        isFrontDefrosterActive = false,
        isRearDefrosterActive = false,
        isRecirculationActive = false,
        fanSpeed = 0,
        driverTemperature = 26,
        passengerTemperature = 26,
        temperatureSynced = true,
        frontLeftAngle = 0.0,
        frontRightAngle = 0.0,
        rearLeftAngle = 0.0,
        rearRightAngle = 0.0,
        gear = 0,
        brake = 0.0,
        throttle = 0.0,
        revLights = 0,
        frontLeftInnerTemperature = 0,
        frontRightInnerTemperature = 0,
        rearLeftInnerTemperature = 0,
        rearRightInnerTemperature = 0,
        frontLeftSurfaceTemperature = 0,
        frontRightSurfaceTemperature = 0,
        rearLeftSurfaceTemperature = 0,
        rearRightSurfaceTemperature = 0,
        frontLeftBrakeTemperature = 0,
        frontRightBrakeTemperature = 0,
        rearLeftBrakeTemperature = 0,
        rearRightBrakeTemperature = 0,
        frontLeftTireWear = 0,
        frontRightTireWear = 0,
        rearLeftTireWear = 0,
        rearRightTireWear = 0,
        drsMode = false,
        ersMode = 0;

  Vehicle copyWith({
    double? speed,
    int? engineSpeed,
    double? insideTemperature,
    double? outsideTemperature,
    double? engineTemperature,
    int? range,
    int? batteryLevel,
    int? frontLeftTire,
    int? frontRightTire,
    int? rearLeftTire,
    int? rearRightTire,
    bool? isAirConditioningActive,
    bool? isFrontDefrosterActive,
    bool? isRearDefrosterActive,
    bool? isRecirculationActive,
    int? fanSpeed,
    int? driverTemperature,
    int? passengerTemperature,
    bool? temperatureSynced,
    double? frontLeftAngle,
    double? frontRightAngle,
    double? rearLeftAngle,
    double? rearRightAngle,
    int? gear,
    double? brake,
    double? throttle,
    int? revLights,
    int? frontLeftInnerTemperature,
    int? frontRightInnerTemperature,
    int? rearLeftInnerTemperature,
    int? rearRightInnerTemperature,
    int? frontLeftSurfaceTemperature,
    int? frontRightSurfaceTemperature,
    int? rearLeftSurfaceTemperature,
    int? rearRightSurfaceTemperature,
    int? frontLeftBrakeTemperature,
    int? frontRightBrakeTemperature,
    int? rearLeftBrakeTemperature,
    int? rearRightBrakeTemperature,
    int? frontLeftTireWear,
    int? frontRightTireWear,
    int? rearLeftTireWear,
    int? rearRightTireWear,
    bool? drsMode,
    int? ersMode,
  }) {
    return Vehicle(
      speed ?? this.speed,
      engineSpeed ?? this.engineSpeed,
      insideTemperature ?? this.insideTemperature,
      outsideTemperature ?? this.outsideTemperature,
      engineTemperature ?? this.engineTemperature,
      range ?? this.range,
      batteryLevel ?? this.batteryLevel,
      frontLeftTire ?? this.frontLeftTire,
      frontRightTire ?? this.frontRightTire,
      rearLeftTire ?? this.rearLeftTire,
      rearRightTire ?? this.rearRightTire,
      isAirConditioningActive ?? this.isAirConditioningActive,
      isFrontDefrosterActive ?? this.isFrontDefrosterActive,
      isRearDefrosterActive ?? this.isRearDefrosterActive,
      isRecirculationActive ?? this.isRecirculationActive,
      fanSpeed ?? this.fanSpeed,
      driverTemperature ?? this.driverTemperature,
      passengerTemperature ?? this.passengerTemperature,
      temperatureSynced ?? this.temperatureSynced,
      frontLeftAngle ?? this.frontLeftAngle,
      frontRightAngle ?? this.frontRightAngle,
      rearLeftAngle ?? this.rearLeftAngle,
      rearRightAngle ?? this.rearRightAngle,
      gear ?? this.gear,
      brake ?? this.brake,
      throttle ?? this.throttle,
      revLights ?? this.revLights,
      frontLeftInnerTemperature ?? this.frontLeftInnerTemperature,
      frontRightInnerTemperature ?? this.frontRightInnerTemperature,
      rearLeftInnerTemperature ?? this.rearLeftInnerTemperature,
      rearRightInnerTemperature ?? this.rearRightInnerTemperature,
      frontLeftSurfaceTemperature ?? this.frontLeftSurfaceTemperature,
      frontRightSurfaceTemperature ?? this.frontRightSurfaceTemperature,
      rearLeftSurfaceTemperature ?? this.rearLeftSurfaceTemperature,
      rearRightSurfaceTemperature ?? this.rearRightSurfaceTemperature,
      frontLeftBrakeTemperature ?? this.frontLeftBrakeTemperature,
      frontRightBrakeTemperature ?? this.frontRightBrakeTemperature,
      rearLeftBrakeTemperature ?? this.rearLeftBrakeTemperature,
      rearRightBrakeTemperature ?? this.rearRightBrakeTemperature,
      frontLeftTireWear ?? this.frontLeftTireWear,
      frontRightTireWear ?? this.frontRightTireWear,
      rearLeftTireWear ?? this.rearLeftTireWear,
      rearRightTireWear ?? this.rearRightTireWear,
      drsMode ?? this.drsMode,
      ersMode ?? this.ersMode,
    );
  }
}
