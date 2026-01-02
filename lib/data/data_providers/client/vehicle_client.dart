import 'dart:async';
import 'package:flutter_ics_homescreen/export.dart';
import 'package:protos/vehicle_api.dart';

class VehicleClient {
  final Ref ref;
  ClientChannel? _channel;
  ResponseStream<VehicleMessage>? _stream;

  VehicleClient(this.ref);

  Future<void> connect({
    String address = 'localhost',
    int port = 20778,
  }) async {
    try {
      _channel = ClientChannel(
        address,
        port: port,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()),
      );
      final client = VehicleServiceClient(_channel!);
      _stream = client.subscribe(SubscribeRequest());

      _stream!.listen(
        _handleIncomingData,
        onError: (error) {
          debugPrint('Error in vehicle data stream: $error');
        },
        onDone: () {
          debugPrint('Vehicle data stream closed');
        },
      );

      debugPrint('Vehicle data subscription started on $address:$port');
    } catch (e) {
      debugPrint('Error starting vehicle data subscription: $e');
    }
  }

  void _handleIncomingData(VehicleMessage msg) {
    try {
      final notifier = ref.read(vehicleProvider.notifier);
      notifier.updateFromMessage(msg);
    } catch (e) {
      debugPrint('Error handling vehicle message: $e');
    }
  }

  void dispose() {
    _stream = null;
    _channel?.shutdown();
  }
}
