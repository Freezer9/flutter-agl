import 'dart:async';
import 'package:flutter_ics_homescreen/export.dart';

class MediaPlayerPositionNotifier extends Notifier<Duration> {
  Timer? positionTimer;

  @override
  Duration build() {
    return Duration.zero;
  }

  void set(Duration position) {
    state = position;
  }

  void play() {
    positionTimer ??=
        Timer.periodic(const Duration(milliseconds: 250), (timer) {
      state = state + const Duration(milliseconds: 250);
    });
  }

  void pause() {
    if (positionTimer != null) {
      positionTimer!.cancel();
      positionTimer = null;
    }
  }
}
