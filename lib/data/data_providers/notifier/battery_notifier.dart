import 'package:flutter_ics_homescreen/export.dart';
import 'package:flutter_ics_homescreen/presentation/widget/battery_notification.dart';

enum BatteryWarningLevel { none, low, critical, full }

class BatteryNotifier extends Notifier<BatteryWarningLevel> {
  @override
  BatteryWarningLevel build() => BatteryWarningLevel.none;

  void checkBatteryLevel(int batteryLevel) {
    if (batteryLevel <= criticalBatteryThreshold) {
      if (state != BatteryWarningLevel.critical) {
        state = BatteryWarningLevel.critical;
      }
    } else if (batteryLevel <= lowBatteryThreshold) {
      if (state != BatteryWarningLevel.low) {
        state = BatteryWarningLevel.low;
      }
    } else if (batteryLevel == 100) {
      if (state != BatteryWarningLevel.full) {
        state = BatteryWarningLevel.full;
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

  void showLowBatteryNotification(BuildContext context) {
    showBatteryNotification(
      context,
      "Battery is Medium",
      "Watch out and take care!",
      color: Colors.orange,
    );
  }

  void showCriticalBatteryNotification(BuildContext context) {
    showBatteryNotification(
      context,
      "Battery is Very Low",
      "Please recharge immediately",
      color: Colors.red,
    );
  }

  void showFullBatteryNotification(BuildContext context) {
    showBatteryNotification(
      context,
      "Battery is Full",
      "Car is ready to use!",
      color: Colors.green,
    );
  }
}
