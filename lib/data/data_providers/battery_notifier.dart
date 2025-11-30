import 'package:flutter_ics_homescreen/export.dart';
import 'package:fluttertoast/fluttertoast.dart';

class BatteryNotifier extends Notifier<bool> {
  bool _hasShownLowBatteryWarning = false;

  @override
  bool build() {
    return false;
  }

  /// Check battery level and show toast notification if needed
  void checkBatteryLevel(int batteryLevel) {
    // Check if battery just crossed the low threshold
    if (batteryLevel <= lowBatteryThreshold && !_hasShownLowBatteryWarning) {
      _showLowBatteryToast(batteryLevel);
      _hasShownLowBatteryWarning = true;
      state = true; // Low battery state active
    }
    // Reset warning flag if battery is charged above threshold
    else if (batteryLevel > lowBatteryThreshold && _hasShownLowBatteryWarning) {
      _hasShownLowBatteryWarning = false;
      state = false; // Low battery state cleared
    }
  }

  /// Show custom low battery toast notification from top
  void _showLowBatteryToast(int batteryLevel) {
    Fluttertoast.showToast(
      msg: "⚠️ Low Battery: $batteryLevel%\nPlease charge soon",
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 4,
      backgroundColor: const Color(0xFFD32F2F), // Red background
      textColor: Colors.white,
      fontSize: 18.0,
      webShowClose: true,
      webBgColor: "linear-gradient(to right, #D32F2F, #F44336)",
      webPosition: "center",
    );
  }

  /// Show critical battery toast (can be called at lower thresholds like 10%)
  void showCriticalBatteryWarning(int batteryLevel) {
    Fluttertoast.showToast(
      msg: "🔋 CRITICAL BATTERY: $batteryLevel%\nCharge immediately!",
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 5,
      backgroundColor: const Color(0xFFB71C1C), // Dark red
      textColor: Colors.white,
      fontSize: 20.0,
      webShowClose: true,
      webBgColor: "linear-gradient(to right, #B71C1C, #D32F2F)",
      webPosition: "center",
    );
  }

  /// Reset the warning flag (useful for testing)
  void resetWarning() {
    _hasShownLowBatteryWarning = false;
    state = false;
  }
}
