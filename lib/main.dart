import 'package:flutter_ics_homescreen/data/data_providers/setup/initialize_vehicle.dart';

import 'export.dart';
import 'data/data_providers/setup/initialize_settings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // if (Platform.isLinux || Platform.isWindows || Platform.isMacOS) {
  //   await windowManager.ensureInitialized();

  //   WindowOptions windowOptions = const WindowOptions(
  //     size: Size(540, 960), // Half of 1080x1920
  //     center: true,
  //     backgroundColor: Colors.transparent,
  //     skipTaskbar: false,
  //     titleBarStyle: TitleBarStyle.normal,
  //   );

  //   windowManager.waitUntilReadyToShow(windowOptions, () async {
  //     await windowManager.show();
  //     await windowManager.focus();
  //   });
  // }

  // Initialize settings from storage API.
  final container = ProviderContainer();
  await initializeSettings(container);
  await initializeVehicle(container);

  runApp(
    ProviderScope(
      // ignore: deprecated_member_use
      parent: container,
      child: const App(),
    ),
  );
}

class ScaledApp extends StatelessWidget {
  const ScaledApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Scale down to half size for desktop
    if (Platform.isLinux || Platform.isWindows || Platform.isMacOS) {
      return const MediaQuery(
        data: MediaQueryData(
          size: Size(1080, 1920),
          devicePixelRatio: 1.0,
        ),
        child: FittedBox(
          fit: BoxFit.contain,
          child: SizedBox(
            width: 1080,
            height: 1920,
            child: App(),
          ),
        ),
      );
    }
    return const App();
  }
}
