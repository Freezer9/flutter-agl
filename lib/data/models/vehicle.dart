import 'dart:convert';

import '../../export.dart';

@immutable
class Vehicle {
  final double speed;
  final int engineSpeed;
  final double insideTemperature;
  final double outsideTemperature;
  final int range;
  final int batteryLevel; // Battery State of Charge (SOC) 0-100%
  final bool isChildLockActiveLeft;
  final bool isChildLockActiveRight;
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

  const Vehicle(
    this.speed,
    this.engineSpeed,
    this.insideTemperature,
    this.outsideTemperature,
    this.range,
    this.batteryLevel,
    this.isChildLockActiveLeft,
    this.isChildLockActiveRight,
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
  );

  const Vehicle.initial()
      : speed = 0,
        engineSpeed = 0,
        insideTemperature = 0,
        outsideTemperature = 0,
        range = 0,
        batteryLevel = 0,
        isChildLockActiveLeft = false,
        isChildLockActiveRight = true,
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
        temperatureSynced = true;

  const Vehicle.initialForDebug()
      : speed = 60,
        engineSpeed = 6500,
        insideTemperature = 25,
        outsideTemperature = 32.0,
        range = 21,
        batteryLevel = 75,
        isChildLockActiveLeft = false,
        isChildLockActiveRight = true,
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
        temperatureSynced = true;

  Vehicle copyWith({
    double? speed,
    int? engineSpeed,
    double? insideTemperature,
    double? outsideTemperature,
    int? range,
    int? batteryLevel,
    bool? isChildLockActiveLeft,
    bool? isChildLockActiveRight,
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
  }) {
    return Vehicle(
      speed ?? this.speed,
      engineSpeed ?? this.engineSpeed,
      insideTemperature ?? this.insideTemperature,
      outsideTemperature ?? this.outsideTemperature,
      range ?? this.range,
      batteryLevel ?? this.batteryLevel,
      isChildLockActiveLeft ?? this.isChildLockActiveLeft,
      isChildLockActiveRight ?? this.isChildLockActiveRight,
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
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'speed': speed,
      'engineSpeed': engineSpeed,
      'insideTemperature': insideTemperature,
      'outsideTemperature': outsideTemperature,
      'range': range,
      'batteryLevel': batteryLevel,
      'isChildLockActiveLeft': isChildLockActiveLeft,
      'isChildLockActiveRight': isChildLockActiveRight,
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
    };
  }

  factory Vehicle.fromMap(Map<String, dynamic> map) {
    return Vehicle(
      map['speed']?.toDouble() ?? 0.0,
      map['engineSpeed']?.toInt() ?? 0,
      map['insideTemperature']?.toDouble() ?? 0.0,
      map['outsideTemperature']?.toDouble() ?? 0.0,
      map['range']?.toInt() ?? 0,
      map['batteryLevel']?.toInt() ?? 0,
      map['isChildLockActiveLeft'] ?? false,
      map['isChildLockActiveRight'] ?? false,
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
    );
  }

  String toJson() => json.encode(toMap());

  factory Vehicle.fromJson(String source) =>
      Vehicle.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Vehicle(speed: $speed, insideTemperature: $insideTemperature, outsideTemperature: $outsideTemperature, range: $range, batteryLevel: $batteryLevel, isChildLockActiveLeft: $isChildLockActiveLeft, isChildLockActiveRight: $isChildLockActiveRight, engineSpeed: $engineSpeed, frontLeftTire: $frontLeftTire, frontRightTire: $frontRightTire, rearLeftTire: $rearLeftTire, rearRightTire: $rearRightTire, isAirConditioningActive: $isAirConditioningActive, isFrontDefrosterActive: $isFrontDefrosterActive, isRearDefrosterActive: $isRearDefrosterActive, isRecirculationActive: $isRecirculationActive,fanSpeed:$fanSpeed,driverTemperature:$driverTemperature, passengerTemperature:$passengerTemperature)';
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
        other.isChildLockActiveLeft == isChildLockActiveLeft &&
        other.isChildLockActiveRight == isChildLockActiveRight &&
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
        other.temperatureSynced == temperatureSynced;
  }

  @override
  int get hashCode {
    return speed.hashCode ^
        engineSpeed.hashCode ^
        insideTemperature.hashCode ^
        outsideTemperature.hashCode ^
        range.hashCode ^
        batteryLevel.hashCode ^
        isChildLockActiveLeft.hashCode ^
        isChildLockActiveRight.hashCode ^
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
        temperatureSynced.hashCode;
  }
}
