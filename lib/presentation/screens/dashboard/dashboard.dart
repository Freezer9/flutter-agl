import 'package:flutter_ics_homescreen/data/data_providers/battery_notifier.dart';

import '/export.dart';
import 'widgets/dashboard_content.dart';

class DasboardPage extends ConsumerWidget {
  const DasboardPage({super.key});

  static Page<void> page() => const MaterialPage<void>(child: DasboardPage());
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<BatteryWarningLevel>(batteryNotifierProvider, (prev, next) {
      final batteryLevel =
          ref.read(vehicleProvider.select((v) => v.batteryLevel));
      final notifier = ref.read(batteryNotifierProvider.notifier);

      if (next == BatteryWarningLevel.critical) {
        notifier.showCriticalBatteryNotification(context, batteryLevel);
      } else if (next == BatteryWarningLevel.low) {
        notifier.showLowBatteryNotification(context, batteryLevel);
      }
    });

    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 150.0),
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: SvgPicture.asset(
              'assets/dashboardTextures.svg',
              alignment: Alignment.center,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 50, horizontal: 140),
          child: DashBoard(),
        ),
      ],
    );
  }
}
