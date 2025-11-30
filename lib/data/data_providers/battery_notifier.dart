import 'package:flutter_ics_homescreen/export.dart';
import 'package:flutter_ics_homescreen/presentation/common_widget/battery_notification.dart';

enum BatteryWarningLevel { none, low, critical }

class BatteryNotifier extends Notifier<BatteryWarningLevel> {
  @override
  BatteryWarningLevel build() => BatteryWarningLevel.none;

  void checkBatteryLevel(int batteryLevel) {
    if (batteryLevel == criticalBatteryThreshold) {
      if (state != BatteryWarningLevel.critical) {
        state = BatteryWarningLevel.critical;
      }
    } else if (batteryLevel == lowBatteryThreshold) {
      if (state != BatteryWarningLevel.low) {
        state = BatteryWarningLevel.low;
      }
    } else {
      if (state != BatteryWarningLevel.none) {
        state = BatteryWarningLevel.none;
      }
    }
  }

  void showBatteryNotification(
      BuildContext context, String message, String description,
      {Color? color}) {
    final overlay = Overlay.of(context);
    final overlayEntry = OverlayEntry(
      builder: (ctx) => BatteryNotification(
        message: message,
        description: description,
        backgroundColor: color ?? const Color(0xFFD32F2F),
      ),
    );
    overlay.insert(overlayEntry);

    Future.delayed(const Duration(seconds: 4), () {
      overlayEntry.remove();
    });
  }

  void showLowBatteryNotification(BuildContext context, int batteryLevel) {
    showBatteryNotification(
      context,
      "⚠️ Low Battery: $batteryLevel%",
      "Please consider charging soon.",
      color: Colors.orange,
    );
  }

  void showCriticalBatteryNotification(BuildContext context, int batteryLevel) {
    showBatteryNotification(
      context,
      "⚠️ CRITICAL BATTERY: $batteryLevel%",
      "Please charge immediately!",
      color: Colors.red,
    );
  }
}
