import 'package:flutter_ics_homescreen/export.dart';
import 'widgets/wifi_content.dart';

class WifiPage extends StatelessWidget {
  const WifiPage({super.key});

  static Page<void> page() => const MaterialPage<void>(child: WifiPage());
  @override
  Widget build(BuildContext context) {
    //final currentUser =
    //ref.watch(usersProvider.select((user) => user.selectedUser));

    return const Scaffold(body: WifiContent());
  }
}
