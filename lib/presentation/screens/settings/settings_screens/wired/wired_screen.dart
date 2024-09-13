import 'dart:io';
import 'package:flutter_ics_homescreen/core/utils/helpers.dart';
import 'package:flutter_ics_homescreen/export.dart';
import 'package:get_ip_address/get_ip_address.dart';

class WiredPage extends ConsumerWidget {
  const WiredPage({super.key});

  static Page<void> page() => const MaterialPage<void>(child: WiredPage());
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(body: WiredScreen());
  }
}

class WiredScreen extends StatefulWidget {
  const WiredScreen({super.key});

  @override
  State<WiredScreen> createState() => _WiredScreenState();
}

class Interface {
  final String deviceName;
  final String? deviceIP;

  const Interface({required this.deviceName, required this.deviceIP});
}

class _WiredScreenState extends State<WiredScreen> {
  String publicIP = "N/A";
  List<Interface> interfaces = List<Interface>.empty();

  @override
  void initState() {
    super.initState();
    getDeviceInfo();
  }

  getDeviceInfo() async {
    final list = await NetworkInterface.list(type: InternetAddressType.IPv4);
    final newInterfaces = list.map((interface) {
      String? deviceIP;
      for (var address in interface.addresses) {
        if (!address.isLinkLocal && !address.isLoopback && !address.isMulticast) {
          deviceIP = address.address;
          break;
        }
      }
      return Interface(
        deviceName: interface.name,
        deviceIP: deviceIP,
      );
    }).toList(growable: false);
    setState(() {
      interfaces = newInterfaces;
    });
  }

  getPublicIPAddress() async {
    try {
      /// Initialize Ip Address
      var ipAddress = IpAddress(type: RequestType.text);

      /// Get the IpAddress based on requestType.
      dynamic data = await ipAddress.getIpAddress();
      setState(() {
        publicIP = data.toString();
      });
    } on IpAddressException catch (exception) {
      /// Handle the exception.
      print(exception.message);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CommonTitle(
          title: 'Wired',
          hasBackButton: true,
          onPressed: () {
            context.flow<AppState>().update((state) => AppState.settings);
          },
        ),
        Expanded(child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 40),
          separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 24),
          itemCount: interfaces.length,
          itemBuilder: (BuildContext context, int index) {
            if (index >= interfaces.length)
              return null;
            final String deviceName = interfaces[index].deviceName;
            bool connected = interfaces[index].deviceIP != null;
            final String deviceIP = interfaces[index].deviceIP ?? "N/A";
            return Container(
              padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 24),
              height: 140,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: const [
                    0,
                    0.01,
                    0.8
                  ],
                  colors: <Color>[
                    Colors.white,
                    AGLDemoColors.neonBlueColor,
                    AGLDemoColors.neonBlueColor.withOpacity(0.15)
                  ]),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // const SizedBox(
                  //   width: 20,
                  // ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          deviceName,
                          style: const TextStyle(color: Colors.white, fontSize: 40),
                        ),
                        Text(
                          connected ? 'connected, $deviceIP' : 'disconnected',
                          style: const TextStyle(color: Colors.white, fontSize: 26),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: AGLDemoColors.buttonFillEnabledColor,
                        border: Border.all(color: AGLDemoColors.neonBlueColor),
                        boxShadow: [Helpers.boxDropShadowRegular]),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(4),
                        child: const Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 30, horizontal: 40),
                          child: Text(
                            "Configure",
                            style: TextStyle(
                                color: AGLDemoColors.periwinkleColor,
                                fontSize: 26),
                          ),
                        ),
                      ),
                    ),
                  ),
                ]
              ),
            );
          },
        )),
      ],
    );
  }
}
