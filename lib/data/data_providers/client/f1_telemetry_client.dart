import 'dart:async';

import 'package:flutter_ics_homescreen/export.dart';
import 'package:protos/f1/car_telemetry.pb.dart';

class F1TelemetryClient {
  final Ref ref;
  RawDatagramSocket? _socket;
  StreamSubscription? _subscription;

  F1TelemetryClient(this.ref);

  Future<void> startUdpListener({
    String address = '0.0.0.0',
    int port = 20778,
  }) async {
    try {
      _socket = await RawDatagramSocket.bind(address, port);
      debugPrint('F1 Telemetry UDP listener started on $address:$port');

      _subscription = _socket!.listen((event) {
        if (event == RawSocketEvent.read) {
          final datagram = _socket!.receive();
          if (datagram != null) {
            _handleUdpData(datagram.data);
          }
        }
      });
    } catch (e) {
      debugPrint('Error starting F1 UDP listener: $e');
    }
  }

  void _handleUdpData(Uint8List data) {
    try {
      final notifier = ref.read(f1TelemetryNotifierProvider.notifier);
      notifier.updateFromProtobuf(data);
    } catch (e) {
      debugPrint('Error handling F1 telemetry data: $e');
    }
  }

  Uint8List serializeTelemetry(CarTelemetry telemetry) {
    return Uint8List.fromList(telemetry.writeToBuffer());
  }

  void dispose() {
    _subscription?.cancel();
    _socket?.close();
  }
}
