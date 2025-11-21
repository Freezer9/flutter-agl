class VSSPath {
  static const String vehicleSpeed = 'Vehicle.Speed';
  static const String vehicleEngineSpeed =
      'Vehicle.Powertrain.CombustionEngine.Speed';
  static const String vehicleInsideTemperature =
      'Vehicle.Cabin.HVAC.AmbientAirTemperature';
  static const String vehicleOutsideTemperature =
      'Vehicle.Exterior.AirTemperature';
  static const String vehicleRange = 'Vehicle.Powertrain.TractionBattery.Range';
  static const String vehicleBatteryLevel =
      'Vehicle.Powertrain.TractionBattery.StateOfCharge.Current';
  static const String vehicleMediaVolume =
      'Vehicle.Cabin.Infotainment.Media.Volume';
  static const String vehicleMediaBalance =
      'Vehicle.Cabin.Infotainment.Media.Audio.Balance';
  static const String vehicleMediaFade =
      'Vehicle.Cabin.Infotainment.Media.Audio.Fade';
  static const String vehicleMediaBass =
      'Vehicle.Cabin.Infotainment.Media.Audio.Bass';
  static const String vehicleMediaTreble =
      'Vehicle.Cabin.Infotainment.Media.Audio.Treble';
  static const String vehicleIsLockActiveLeft =
      'Vehicle.Cabin.Door.DriverSide.LockStatus';
  static const String vehicleIsLockActiveRight =
      'Vehicle.Cabin.Door.PassengerSide.LockStatus';
  static const String vehicleFrontLeftTire =
      'Vehicle.Chassis.Axle.Front.Wheel.Left.Tire.Pressure';
  static const String vehicleFrontRightTire =
      'Vehicle.Chassis.Axle.Front.Wheel.Right.Tire.Pressure';
  static const String vehicleRearLeftTire =
      'Vehicle.Chassis.Axle.Rear.Wheel.Left.Tire.Pressure';
  static const String vehicleRearRightTire =
      'Vehicle.Chassis.Axle.Rear.Wheel.Right.Tire.Pressure';
  static const String vehicleIsAirConditioningActive =
      'Vehicle.Cabin.HVAC.IsAirConditioningActive';
  static const String vehicleIsFrontDefrosterActive =
      'Vehicle.Cabin.HVAC.IsFrontDefrosterActive';
  static const String vehicleIsRearDefrosterActive =
      'Vehicle.Cabin.HVAC.IsRearDefrosterActive';
  static const String vehicleIsRecirculationActive =
      'Vehicle.Cabin.HVAC.IsRecirculationActive';
  static const String vehicleFanSpeed =
      'Vehicle.Cabin.HVAC.Front.Driver.FanSpeed';
  static const String vehicleDriverTemperature =
      'Vehicle.Cabin.HVAC.Front.Driver.Temperature';
  static const String vehiclePassengerTemperature =
      'Vehicle.Cabin.HVAC.Front.Passenger.Temperature';
  static const String vehicleHmiDistanceUnit =
      'Vehicle.Cabin.Infotainment.HMI.DistanceUnit';
  static const String vehicleHmiTemperatureUnit =
      'Vehicle.Cabin.Infotainment.HMI.TemperatureUnit';
  static const String vehicleHmiPressureUnit =
      'Vehicle.Cabin.Infotainment.HMI.TirePressureUnit';

  List<String> getSignalsList() {
    return const [
      vehicleSpeed,
      vehicleEngineSpeed,
      vehicleInsideTemperature,
      vehicleOutsideTemperature,
      vehicleRange,
      vehicleBatteryLevel, // Primary: EV battery SOC
      vehicleMediaVolume,
      vehicleMediaBalance,
      vehicleMediaFade,
      vehicleMediaBass,
      vehicleMediaTreble,
      vehicleIsLockActiveLeft,
      vehicleIsLockActiveRight,
      vehicleFrontLeftTire,
      vehicleFrontRightTire,
      vehicleRearLeftTire,
      vehicleRearRightTire,
      vehicleIsAirConditioningActive,
      vehicleIsFrontDefrosterActive,
      vehicleIsRearDefrosterActive,
      vehicleIsRecirculationActive,
      vehicleFanSpeed,
      vehicleDriverTemperature,
      vehiclePassengerTemperature,
      vehicleHmiDistanceUnit,
      vehicleHmiTemperatureUnit,
      vehicleHmiPressureUnit,
    ];
  }
}
