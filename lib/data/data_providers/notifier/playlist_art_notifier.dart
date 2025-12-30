import 'package:flutter_ics_homescreen/export.dart';

class PlaylistArtNotifier extends Notifier<Map<int, Uint8List>> {
  @override
  Map<int, Uint8List> build() {
    return {};
  }

  void update(int position, Uint8List art) {
    // Having to copy the Map to trigger notification seems not particularly
    // efficient, it may make sense to notify against the last position
    // updated or similar...
    state[position] = art;
    state = Map.of(state);
  }

  void clear() {
    state = {};
  }
}
