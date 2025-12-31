import '/export.dart';
import 'widgets/settings_content.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  static Page<void> page() => const MaterialPage<void>(child: SettingsPage());
  @override
  Widget build(BuildContext context) {
    return const SettingsContent();
  }
}

class SettingsContent extends StatelessWidget {
  const SettingsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Settings(),
      ],
    );
  }
}
