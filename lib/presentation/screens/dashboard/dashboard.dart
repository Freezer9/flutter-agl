import '/export.dart';
import 'widgets/dashboard_content.dart';

class DasboardPage extends ConsumerWidget {
  const DasboardPage({super.key});

  static Page<void> page() => const MaterialPage<void>(child: DasboardPage());
  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
