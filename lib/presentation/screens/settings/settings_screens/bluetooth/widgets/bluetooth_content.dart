import 'package:flutter_ics_homescreen/presentation/custom_icons/custom_icons.dart';

import '../../../../../../../export.dart';
import 'bluetooth.dart';

class BluetoothContent extends ConsumerStatefulWidget {
  const BluetoothContent({
    super.key,
  });

  @override
  BluetoothContentState createState() => BluetoothContentState();
}

class BluetoothContentState extends ConsumerState<BluetoothContent> {
  final List<Bluetooth> btList = [
    Bluetooth(
        icon: const Icon(CustomIcons.wifi_4_bar_unlocked),
        name: 'bt',
        isConnected: true),
    Bluetooth(
        icon: const Icon(CustomIcons.wifi_4_bar_locked), name: 'BT Phone 0'),
    Bluetooth(
        icon: const Icon(CustomIcons.wifi_3_bar_locked), name: 'BT Phone 1'),
    Bluetooth(
        icon: const Icon(CustomIcons.wifi_2_bar_locked), name: 'BT Phone 2'),
    Bluetooth(
        icon: const Icon(CustomIcons.wifi_1_bar_locked), name: 'BT Phone 1'),
  ];
  bool isLoading = false;
  Bluetooth currentBt =
      Bluetooth(icon: const Icon(Icons.wifi), name: '22', isConnected: true);
  @override
  void initState() {
    currentBt = btList[0];
    super.initState();
  }

  void setCurrentBt(int index) async {
    if (currentBt == btList[index]) return;
    isLoading = true;
    setState(() {
      currentBt = btList[index];
    });
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  void removeBtPair(int index) {
    setState(() {
      btList.removeAt(index);
    });
  }

  void disconnect() {
    setState(() {
      currentBt = Bluetooth(
          icon: const Icon(
            Icons.bluetooth_disabled,
          ),
          name: '');
    });
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(usersProvider.select((user) => user.selectedUser));

    return Column(
      children: [
        CommonTitle(
          title: "Bluetooth",
          hasBackButton: true,
          onPressed: () {
            ref.read(appProvider.notifier).back();
          },
        ),
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 144),
            itemCount: btList.length,
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 8,
              );
            },
            itemBuilder: (context, index) {
              return Container(
                height: 130,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      stops: currentBt == btList[index]
                          ? [0, 0.01, 0.8]
                          : [0.1, 1],
                      colors: currentBt == btList[index]
                          ? <Color>[
                              Colors.white,
                              Colors.blue,
                              const Color.fromARGB(16, 41, 98, 255)
                            ]
                          : <Color>[Colors.black, Colors.black12]),
                ),
                child: InkWell(
                  onTap: () {
                    setCurrentBt(index);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 17, horizontal: 24),
                    child: Row(children: [
                      Expanded(
                        child: Text(
                          btList[index].name,
                          //style: Theme.of(context).textTheme.titleMedium,
                          style: TextStyle(
                              color: currentBt == btList[index]
                                  ? Colors.white
                                  : AGLDemoColors.periwinkleColor,
                              fontSize: 40),
                        ),
                      ),
                      currentBt == btList[index]
                          ? Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                isLoading
                                    ? const Padding(
                                        padding: EdgeInsets.only(right: 15.0),
                                        child: Text(
                                          'Connecting...',
                                          style: TextStyle(fontSize: 26),
                                        ),
                                      )
                                    : Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color(0xFF1C2D92),
                                            side: const BorderSide(
                                                color: Color(0xFF285DF4),
                                                width: 2),
                                          ),
                                          child: const Padding(
                                            padding: EdgeInsets.all(18),
                                            child: Text(
                                              'Disconnect',
                                              style: TextStyle(
                                                color: Color(0xFFC1D8FF),
                                                fontSize: 26,
                                              ),
                                            ),
                                          ),
                                          onPressed: () {
                                            disconnect();
                                          },
                                        ),
                                      ),
                                isLoading
                                    ? const SizedBox(
                                        width: 48,
                                        height: 48,
                                        child: CircularProgressIndicator(
                                          strokeWidth: 3,
                                        ))
                                    : IconButton(
                                        padding: EdgeInsets.zero,
                                        onPressed: () {
                                          removeBtPair(index);
                                        },
                                        icon: const Icon(
                                          Icons.close,
                                          color: AGLDemoColors.periwinkleColor,
                                          size: 48,
                                        ),
                                      ),
                              ],
                            )
                          : IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {
                                removeBtPair(index);
                              },
                              icon: const Icon(
                                Icons.close,
                                color: AGLDemoColors.periwinkleColor,
                                size: 48,
                              ),
                            ),
                    ]),
                  ),
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 150.0),
          child: GenericButton(
            height: 130,
            width: 501,
            text: 'Scan for New Device',
            onTap: () {},
          ),
        ),
        const SizedBox(
          height: 100,
        )
      ],
    );
  }
}
