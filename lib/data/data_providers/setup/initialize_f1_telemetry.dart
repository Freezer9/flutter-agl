import 'package:flutter_ics_homescreen/export.dart';

Future<void> initializeF1Telemetry(ProviderContainer container) async {
  final client = container.read(f1TelemetryClientProvider);

  try {
    await client.startUdpListener(
      address: '0.0.0.0',
      port: 20778,
    );
  } catch (e) {
    debugPrint('Failed to initialize F1 telemetry: $e');
  }
}
