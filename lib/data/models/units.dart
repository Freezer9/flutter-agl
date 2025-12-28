import '../../export.dart';

enum DistanceUnit { kilometers, miles }

enum TemperatureUnit { celsius, fahrenheit }

enum PressureUnit { kilopascals, psi }

@immutable
class Units {
  final DistanceUnit distanceUnit;
  final TemperatureUnit temperatureUnit;
  final PressureUnit pressureUnit;

  const Units(
    this.distanceUnit,
    this.temperatureUnit,
    this.pressureUnit,
  );
  const Units.initial()
      : distanceUnit = DistanceUnit.kilometers,
        temperatureUnit = TemperatureUnit.celsius,
        pressureUnit = PressureUnit.psi;

  Units copyWith({
    DistanceUnit? distanceUnit,
    TemperatureUnit? temperatureUnit,
    PressureUnit? pressureUnit,
  }) {
    return Units(
      distanceUnit ?? this.distanceUnit,
      temperatureUnit ?? this.temperatureUnit,
      pressureUnit ?? this.pressureUnit,
    );
  }

  @override
  String toString() =>
      'Units(distanceUnit: $distanceUnit, temperatureUnit: $temperatureUnit, pressureUnit: $pressureUnit)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Units &&
        other.distanceUnit == distanceUnit &&
        other.temperatureUnit == temperatureUnit &&
        other.pressureUnit == pressureUnit;
  }

  @override
  int get hashCode =>
      distanceUnit.hashCode ^ temperatureUnit.hashCode ^ pressureUnit.hashCode;
}
