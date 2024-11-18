import 'package:flutter_ics_homescreen/export.dart';
import 'package:flutter_ics_homescreen/presentation/screens/apps/widgets/app_button.dart';

class Apps extends ConsumerStatefulWidget {
  const Apps({super.key});

  @override
  ConsumerState<Apps> createState() => _AppsState();
}

class _AppsState extends ConsumerState<Apps> {
  onPressed({required bool internal, required String id}) {
    if (internal) {
      if (id == "weather") {
        context.flow<AppState>().update((next) => AppState.weather);
      } else if (id == "clock") {
        context.flow<AppState>().update((next) => AppState.clock);
      }
    } else {
      ref.read(appLauncherProvider).startApp(id);
    }
  }

  @override
  Widget build(BuildContext context) {
    var apps = ref.watch(appLauncherListProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const CommonTitle(title: "Applications"),
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 148),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: apps.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3),
            itemBuilder: (context, index) {
              return GridTile(
                  child: Container(
                      alignment: Alignment.center,
                      child: AppButton(
                        title: apps[index].name,
                        image: apps[index].icon.isNotEmpty ? apps[index].icon : "app-generic.svg",
                        onPressed: () {
                          onPressed(internal: apps[index].internal, id: apps[index].id);
                        },
                      )));
            })
        ),
        // Center(
        //   child: SizedBox(
        //       width: 500,
        //       height: 500,
        //       child: Center(
        //         child: Lottie.asset(''),
        //       )),
        //     ),
      ],
    );
  }
}

