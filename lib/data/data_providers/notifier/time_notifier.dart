import 'dart:async';

import 'package:flutter_ics_homescreen/export.dart';

class CurrentTimeNotifier extends StateNotifier<DateTime> {
  CurrentTimeNotifier() : super(DateTime.now()) {
    if (!_hasInitialized) {
      _initializeTimer();
      _hasInitialized = true;
    }
  }

  bool _hasInitialized = false;
  int? selectedYear;
  bool isYearChanged = false;

  void _initializeTimer() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      state = state.add(const Duration(seconds: 1));
    });
  }

  void setCurrentTime(DateTime newTime) {
    state = newTime;
    selectedYear = newTime.year;
  }
}
