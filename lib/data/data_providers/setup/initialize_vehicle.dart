import 'package:flutter_ics_homescreen/export.dart';

Future<void> initializeVehicle(ProviderContainer container) async {
  final client = container.read(vehicleClientProvider);

  try {
    await client.startDataListener(
      address: '0.0.0.0',
      port: 20778,
    );
  } catch (e) {
    debugPrint('Failed to initialize vehicle client: $e');
  }
}
