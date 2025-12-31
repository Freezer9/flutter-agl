import 'package:flutter_ics_homescreen/export.dart';

class AudioStateNotifier extends Notifier<AudioState> {
  @override
  AudioState build() {
    return const AudioState.initial();
  }

  void resetToDefaults() {
    state = state.copyWith(balance: 5.0, fade: 5.0, treble: 5.0, bass: 5.0);
  }

  void setVolume(double newValue) {
    state = state.copyWith(volume: newValue);
  }

  void setBalance(double newValue) {
    state = state.copyWith(balance: newValue);
  }

  void setFade(double newValue) {
    state = state.copyWith(fade: newValue);
  }

  void setTreble(double newValue) {
    state = state.copyWith(treble: newValue);
  }

  void setBass(double newValue) {
    state = state.copyWith(bass: newValue);
  }
}
