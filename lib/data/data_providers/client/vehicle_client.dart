import 'dart:async';
import 'package:flutter_ics_homescreen/export.dart';

class VehicleClient {
  final Ref ref;
  RawDatagramSocket? _socket;
  StreamSubscription? _subscription;

  static const int headerByte = 0xCA;

  VehicleClient(this.ref);

  Future<void> startDataListener({
    String address = '0.0.0.0',
    int port = 20778,
  }) async {
    try {
      _socket = await RawDatagramSocket.bind(address, port);
      debugPrint('Vehicle data listener started on $address:$port');

      _subscription = _socket!.listen((event) {
        if (event == RawSocketEvent.read) {
          final datagram = _socket!.receive();
          if (datagram != null) {
            _handleIncomingData(datagram.data);
          }
        }
      });
    } catch (e) {
      debugPrint('Error starting vehicle data listener: $e');
    }
  }

  void _handleIncomingData(Uint8List data) {
    try {
      final notifier = ref.read(vehicleProvider.notifier);

      if (data[0] == headerByte) {
        notifier.updateFromBinaryData(data);
      } else {
        notifier.updateFromProtobuf(data);
      }
    } catch (e) {
      debugPrint('Error handling vehicle telemetry data: $e');
    }
  }

  void dispose() {
    _subscription?.cancel();
    _socket?.close();
  }
}
