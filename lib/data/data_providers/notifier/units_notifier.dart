import 'package:flutter_ics_homescreen/export.dart';

import 'package:protos/storage_api.dart' as storage_api;

class UnitsNotifier extends Notifier<Units> {
  @override
  Units build() {
    return const Units.initial();
  }

  // Load Units state of the selected user from the storage API.
  Future<void> loadSettingsUnits() async {
    final storageClient = ref.read(storageClientProvider);
    final userClient = ref.read(usersProvider);

    try {
      // Read unit values from the selected user namespace.
      final distanceResponse = await storageClient.read(storage_api.Key(
          key: 'distanceUnit', namespace: userClient.selectedUser.id));
      final temperatureResponse = await storageClient.read(storage_api.Key(
          key: 'temperatureUnit', namespace: userClient.selectedUser.id));
      final pressureResponse = await storageClient.read(storage_api.Key(
          key: 'pressureUnit', namespace: userClient.selectedUser.id));

      // Prepare state declaration and fall back to default values if the key is not present in the storage API.
      final distanceUnit = distanceResponse.result == 'MILES'
          ? DistanceUnit.miles
          : DistanceUnit.kilometers;

      final temperatureUnit = temperatureResponse.result == 'F'
          ? TemperatureUnit.fahrenheit
          : TemperatureUnit.celsius;

      final pressureUnit = pressureResponse.result == 'PSI'
          ? PressureUnit.psi
          : PressureUnit.kilopascals;

      state = Units(distanceUnit, temperatureUnit, pressureUnit);
    } catch (e) {
      // Fallback to initial defaults if error occurs.
      debugPrint('Error loading settings for units: $e');
      state = const Units.initial();
    }
  }

  Future<void> setDistanceUnit(DistanceUnit unit) async {
    state = state.copyWith(distanceUnit: unit);

    // Write to storage API (to selected user namespace).
    var storageClient = ref.read(storageClientProvider);
    final userClient = ref.read(usersProvider);
    try {
      await storageClient.write(storage_api.KeyValue(
          key: 'distanceUnit',
          value: unit == DistanceUnit.kilometers ? 'KILOMETERS' : 'MILES',
          namespace: userClient.selectedUser.id));
    } catch (e) {
      debugPrint('Error saving distance unit: $e');
    }
  }

  Future<void> setTemperatureUnit(TemperatureUnit unit) async {
    state = state.copyWith(temperatureUnit: unit);

    // Write to storage API (to selected user namespace).
    var storageClient = ref.read(storageClientProvider);
    final userClient = ref.read(usersProvider);
    try {
      await storageClient.write(storage_api.KeyValue(
          key: 'temperatureUnit',
          value: unit == TemperatureUnit.celsius ? "C" : "F",
          namespace: userClient.selectedUser.id));
    } catch (e) {
      debugPrint('Error saving temperature unit: $e');
    }
  }

  Future<void> setPressureUnit(PressureUnit unit) async {
    state = state.copyWith(pressureUnit: unit);

    // Write to storage API (to selected user namespace).
    var storageClient = ref.read(storageClientProvider);
    final userClient = ref.read(usersProvider);
    try {
      await storageClient.write(storage_api.KeyValue(
          key: 'pressureUnit',
          value: unit == PressureUnit.kilopascals ? "KPA" : "PSI",
          namespace: userClient.selectedUser.id));
    } catch (e) {
      debugPrint('Error saving pressure unit: $e');
    }
  }
}
