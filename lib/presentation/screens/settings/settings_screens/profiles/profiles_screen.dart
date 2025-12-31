import 'package:flutter_ics_homescreen/export.dart';

import 'widgets/profiles_content.dart';

class ProfilesPage extends StatelessWidget {
  const ProfilesPage({super.key});

  static Page<void> page() => const MaterialPage<void>(child: ProfilesPage());
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          ProfilesContent(),
        ],
      ),
    );
  }
}
