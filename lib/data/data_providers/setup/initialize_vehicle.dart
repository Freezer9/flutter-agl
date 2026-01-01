import 'package:flutter_ics_homescreen/export.dart';

Future<void> initializeVehicle(ProviderContainer container) async {
  final client = container.read(vehicleClientProvider);

  try {
    await client.subscribe();
  } catch (e) {
    debugPrint('Failed to initialize vehicle client: $e');
  }
}
