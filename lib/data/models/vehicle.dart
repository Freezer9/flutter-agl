import 'dart:convert';

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
  final int frontLeftTire;
  final int frontRightTire;
  final int rearLeftTire;
  final int rearRightTire;
  final bool isAirConditioningActive;
  final bool isFrontDefrosterActive;
  final bool isRearDefrosterActive;
  final bool isRecirculationActive;
  final int fanSpeed;
  final int driverTemperature;
  final int passengerTemperature;
  final bool temperatureSynced;
  final double frontLeftAngle;
  final double frontRightAngle;
  final double rearLeftAngle;
  final double rearRightAngle;
  final int gear;
  final double brake;
  final double throttle;
  final int revLights;

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
        revLights = 0;

  const Vehicle.initialForDebug()
      : speed = 60,
        engineSpeed = 6500,
        insideTemperature = 25,
        outsideTemperature = 32.0,
        engineTemperature = 90.0,
        range = 21,
        batteryLevel = 49,
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
        frontLeftAngle = 10.0,
        frontRightAngle = 10.0,
        rearLeftAngle = -10.0,
        rearRightAngle = -10.0,
        gear = 3,
        brake = 0.5,
        throttle = 0.7,
        revLights = 8191;

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
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'speed': speed,
      'engineSpeed': engineSpeed,
      'insideTemperature': insideTemperature,
      'outsideTemperature': outsideTemperature,
      'engineTemperature': engineTemperature,
      'range': range,
      'batteryLevel': batteryLevel,
      'frontLeftTire': frontLeftTire,
      'frontRightTire': frontRightTire,
      'rearLeftTire': rearLeftTire,
      'rearRightTire': rearRightTire,
      'isAirConditioningActive': isAirConditioningActive,
      'isFrontDefrosterActive': isFrontDefrosterActive,
      'isRearDefrosterActive': isRearDefrosterActive,
      'isRecirculationActive': isRecirculationActive,
      'fanSpeed': fanSpeed,
      'driverTemperature': driverTemperature,
      'passengerTemperature': passengerTemperature,
      'temperatureSynced': temperatureSynced,
      'frontLeftAngle': frontLeftAngle,
      'frontRightAngle': frontRightAngle,
      'rearLeftAngle': rearLeftAngle,
      'rearRightAngle': rearRightAngle,
      'gear': gear,
      'brake': brake,
      'throttle': throttle,
      'revLights': revLights,
    };
  }

  factory Vehicle.fromMap(Map<String, dynamic> map) {
    return Vehicle(
      map['speed']?.toDouble() ?? 0.0,
      map['engineSpeed']?.toInt() ?? 0,
      map['insideTemperature']?.toDouble() ?? 0.0,
      map['outsideTemperature']?.toDouble() ?? 0.0,
      map['engineTemperature']?.toDouble() ?? 0.0,
      map['range']?.toInt() ?? 0,
      map['batteryLevel']?.toDouble() ?? 0.0,
      map['frontLeftTire']?.toInt() ?? 0,
      map['frontRightTire']?.toInt() ?? 0,
      map['rearLeftTire']?.toInt() ?? 0,
      map['rearRightTire']?.toInt() ?? 0,
      map['isAirConditioningActive'] ?? false,
      map['isFrontDefrosterActive'] ?? false,
      map['isRearDefrosterActive'] ?? false,
      map['isRecirculationActive'] ?? false,
      map['fanSpeed'] ?? 0,
      map['driverTemperature'] ?? 0,
      map['passengerTemperature'] ?? 0,
      map['temperatureSynced'] ?? false,
      map['frontLeftAngle']?.toDouble() ?? 0.0,
      map['frontRightAngle']?.toDouble() ?? 0.0,
      map['rearLeftAngle']?.toDouble() ?? 0.0,
      map['rearRightAngle']?.toDouble() ?? 0.0,
      map['gear']?.toInt() ?? 0,
      map['brake']?.toDouble() ?? 0.0,
      map['throttle']?.toDouble() ?? 0.0,
      map['revLights']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Vehicle.fromJson(String source) =>
      Vehicle.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Vehicle(speed: $speed, insideTemperature: $insideTemperature, outsideTemperature: $outsideTemperature, engineTemperature: $engineTemperature range: $range, batteryLevel: $batteryLevel, engineSpeed: $engineSpeed, frontLeftTire: $frontLeftTire, frontRightTire: $frontRightTire, rearLeftTire: $rearLeftTire, rearRightTire: $rearRightTire, isAirConditioningActive: $isAirConditioningActive, isFrontDefrosterActive: $isFrontDefrosterActive, isRearDefrosterActive: $isRearDefrosterActive, isRecirculationActive: $isRecirculationActive,fanSpeed:$fanSpeed,driverTemperature:$driverTemperature, passengerTemperature:$passengerTemperature)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Vehicle &&
        other.speed == speed &&
        other.engineSpeed == engineSpeed &&
        other.insideTemperature == insideTemperature &&
        other.outsideTemperature == outsideTemperature &&
        other.range == range &&
        other.batteryLevel == batteryLevel &&
        other.frontLeftTire == frontLeftTire &&
        other.frontRightTire == frontRightTire &&
        other.rearLeftTire == rearLeftTire &&
        other.rearRightTire == rearRightTire &&
        other.isAirConditioningActive == isAirConditioningActive &&
        other.isFrontDefrosterActive == isFrontDefrosterActive &&
        other.isRearDefrosterActive == isRearDefrosterActive &&
        other.isRecirculationActive == isRecirculationActive &&
        other.fanSpeed == fanSpeed &&
        other.driverTemperature == driverTemperature &&
        other.passengerTemperature == passengerTemperature &&
        other.temperatureSynced == temperatureSynced &&
        other.frontLeftAngle == frontLeftAngle &&
        other.frontRightAngle == frontRightAngle &&
        other.rearLeftAngle == rearLeftAngle &&
        other.rearRightAngle == rearRightAngle &&
        other.gear == gear &&
        other.brake == brake &&
        other.throttle == throttle &&
        other.revLights == revLights;
  }

  @override
  int get hashCode {
    return speed.hashCode ^
        engineSpeed.hashCode ^
        insideTemperature.hashCode ^
        outsideTemperature.hashCode ^
        range.hashCode ^
        batteryLevel.hashCode ^
        frontLeftTire.hashCode ^
        frontRightTire.hashCode ^
        rearLeftTire.hashCode ^
        rearRightTire.hashCode ^
        isAirConditioningActive.hashCode ^
        isFrontDefrosterActive.hashCode ^
        isRearDefrosterActive.hashCode ^
        isRecirculationActive.hashCode ^
        fanSpeed.hashCode ^
        driverTemperature.hashCode ^
        passengerTemperature.hashCode ^
        temperatureSynced.hashCode ^
        frontLeftAngle.hashCode ^
        frontRightAngle.hashCode ^
        rearLeftAngle.hashCode ^
        rearRightAngle.hashCode ^
        gear.hashCode ^
        brake.hashCode ^
        throttle.hashCode ^
        revLights.hashCode;
  }
}
