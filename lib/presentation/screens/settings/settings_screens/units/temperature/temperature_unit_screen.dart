import 'package:flutter_ics_homescreen/export.dart';

class TemperatureUnitPage extends ConsumerWidget {
  const TemperatureUnitPage({super.key});

  static Page<void> page() =>
      const MaterialPage<void>(child: TemperatureUnitPage());
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final unit =
        ref.watch(unitStateProvider.select((unit) => unit.temperatureUnit));

    return Scaffold(
      body: Column(
        children: [
          CommonTitle(
            title: 'Temperature',
            hasBackButton: true,
            onPressed: () {
              context.flow<AppState>().update((state) => AppState.units);
            },
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 144),
              child: ListView(
                children: [
                  Container(
                    height: 130,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          stops: unit == TemperatureUnit.celsius
                              ? [0, 0.01, 0.8]
                              : [0.1, 1],
                          colors: unit == TemperatureUnit.celsius
                              ? <Color>[
                                  Colors.white,
                                  Colors.blue,
                                  const Color.fromARGB(16, 41, 98, 255)
                                ]
                              : <Color>[Colors.black, Colors.black12]),
                    ),
                    child: ListTile(
                        minVerticalPadding: 0.0,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 40.0),
                        leading: Text(
                          'Celsius',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        //title: Text(widget.title),
                        //enabled: isSwitchOn,
                        trailing: unit == TemperatureUnit.celsius
                            ? const Icon(
                                Icons.done,
                                color: AGLDemoColors.periwinkleColor,
                                size: 48,
                              )
                            : null,
                        onTap: () {
                          ref
                              .read(unitStateProvider.notifier)
                              .setTemperatureUnit(TemperatureUnit.celsius);
                        }),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 130,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          stops: unit == TemperatureUnit.fahrenheit
                              ? [0, 0.01, 0.8]
                              : [0.1, 1],
                          colors: unit == TemperatureUnit.fahrenheit
                              ? <Color>[
                                  Colors.white,
                                  Colors.blue,
                                  const Color.fromARGB(16, 41, 98, 255)
                                ]
                              : <Color>[Colors.black, Colors.black12]),
                    ),
                    child: ListTile(
                      minVerticalPadding: 0.0,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 40.0),
                      leading: Text(
                        'Fahrenheit',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      //title: Text(widget.title),
                      //enabled: isSwitchOn,
                      trailing: unit == TemperatureUnit.fahrenheit
                          ? const Icon(
                              Icons.done,
                              color: AGLDemoColors.periwinkleColor,
                              size: 38,
                            )
                          : null,

                      onTap: () {
                        ref
                            .read(unitStateProvider.notifier)
                            .setTemperatureUnit(TemperatureUnit.fahrenheit);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
