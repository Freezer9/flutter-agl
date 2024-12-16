import 'package:flutter_ics_homescreen/presentation/custom_icons/custom_icons.dart';

import '../../../../../../export.dart';
import 'wifi.dart';

class WifiContent extends ConsumerStatefulWidget {
  const WifiContent({
    super.key,
  });

  @override
  WifiContentState createState() => WifiContentState();
}

class WifiContentState extends ConsumerState<WifiContent> {
  final List<Wifi> wifiList = [
    Wifi(
        icon: const Icon(
          CustomIcons.wifi_4_bar_unlocked,
          size: 48,
        ),
        name: 'box2',
        isConnected: true),
    Wifi(
        icon: const Icon(
          CustomIcons.wifi_4_bar_locked,
          size: 48,
        ),
        name: 'WIVACOM_FiberNew_B61E'),
    Wifi(
      icon: const Icon(
        CustomIcons.wifi_3_bar_locked,
        size: 48,
      ),
      name: 'OpenWrt',
    ),
    Wifi(
        icon: const Icon(
          CustomIcons.wifi_2_bar_locked,
          size: 48,
        ),
        name: 'kahuna2'),
    Wifi(
        icon: const Icon(
          CustomIcons.wifi_1_bar_locked,
          size: 48,
        ),
        name: 'mip2'),
  ];
  Wifi currentWifi =
      Wifi(icon: const Icon(Icons.wifi), name: 'box2', isConnected: true);
  @override
  void initState() {
    currentWifi = wifiList[0];
    super.initState();
  }

  void setCurrentWifi(int index) {
    setState(() {
      currentWifi = wifiList[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(usersProvider.select((user) => user.selectedUser));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CommonTitle(
          title: "Wifi",
          hasBackButton: true,
          onPressed: () {
            ref.read(appProvider.notifier).back();
          },
        ),
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 144),
            itemCount: wifiList.length,
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 8,
              );
            },
            itemBuilder: (context, index) {
              return Container(
                height: 130,

                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      stops: currentWifi == wifiList[index]
                          ? [0, 0.01, 0.8]
                          : [0.1, 1],
                      colors: currentWifi == wifiList[index]
                          ? <Color>[
                              Colors.white,
                              Colors.blue,
                              const Color.fromARGB(16, 41, 98, 255)
                            ]
                          : <Color>[Colors.black, Colors.black12]),
                ),
                child: ListTile(                     
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 41, horizontal: 24),

                  leading: wifiList[index].icon,
                  title: Text(
                    wifiList[index].name,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  onTap: () {
                    setCurrentWifi(index);
                  },
                ),
              );
            },
          ),
        ),
        // Container(
        //   padding: const EdgeInsets.symmetric(
        //     horizontal: 175,
        //   ),
        //   child: ElevatedButton(
        //     style: ElevatedButton.styleFrom(
        //       backgroundColor: const Color(0xFF1C2D92),
        //     ),
        //     child: const Padding(
        //       padding: EdgeInsets.symmetric(horizontal: 0, vertical: 15),
        //       child: Text(
        //         'New Profile',
        //         textAlign: TextAlign.center,
        //         style: TextStyle(
        //           color: Color(0xFFC1D8FF),
        //           fontSize: 20,
        //         ),
        //       ),
        //     ),
        //     onPressed: () {
        //       //context.flow<AppState>().update((state) => AppState.newProfile);
        //     },
        //   ),
        // ),
      ],
    );
  }
}
