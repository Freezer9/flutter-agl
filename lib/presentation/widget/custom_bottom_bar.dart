// ignore_for_file: prefer_const_constructors

import '../../export.dart';

class CustomBottomBar extends ConsumerStatefulWidget {
  const CustomBottomBar({super.key});

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends ConsumerState<CustomBottomBar> {
  @override
  void initState() {
    super.initState();
    // "ref" can be used in all life-cycles of a StatefulWidget.
    //ref.read(counterProvider);
  }

  double iconSize = 57;
  List<BottomBarItems> navItems = [
    BottomBarItems(title: "Home", image: "Dashboard"),
    BottomBarItems(title: "HVAC", image: "HVAC"),
    BottomBarItems(title: "Media", image: "MediaPlayer"),
    BottomBarItems(title: "Settings", image: "Settings"),
    BottomBarItems(title: "Apps", image: "Apps")
  ];
  String selectedNav = "Home";

  void _onItemTapped(String title) {
    AppState status = AppState.dashboard;
    switch (title) {
      case "Home":
        status = AppState.dashboard;
      case "HVAC":
        status = AppState.hvac;
      case "Media":
        status = AppState.media;
      case "Settings":
        status = AppState.settings;
      case "Apps":
        status = AppState.apps;
    }
    setState(() {
      selectedNav = title;
    });
    ref.read(appLauncherProvider).activateApp("homescreen");
    ref.read(currentTimeProvider.notifier).isYearChanged = false;
    ref.read(appProvider.notifier).update(status);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Row(
          children: navItems
              .map((e) => Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 2,
                        ),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                selectedNav == e.title
                                    ? Color.fromARGB(217, 41, 98, 255)
                                    : Color.fromARGB(163, 28, 46, 146),
                                selectedNav == e.title
                                    ? Color.fromARGB(0, 41, 98, 255)
                                    : Color.fromARGB(0, 41, 98, 255),
                              ],
                              stops: [
                                selectedNav == e.title ? 0.3 : 0,
                                selectedNav == e.title ? 1 : 0.8,
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter),
                          // color: selectedNav == e
                          //     ? AGLDemoColors.neonBlueColor
                          //     : AGLDemoColors.buttonFillEnabledColor,
                          border: Border(
                            bottom: const BorderSide(
                                width: 1.0,
                                color: AGLDemoColors.jordyBlueColor),
                          ),
                        ),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              _onItemTapped(e.title);
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 7),
                              decoration: BoxDecoration(
                                  border: Border(
                                left: selectedNav == e.title
                                    ? const BorderSide(color: Colors.white30)
                                    : BorderSide.none,
                                right: selectedNav == e.title
                                    ? const BorderSide(color: Colors.white30)
                                    : BorderSide.none,
                                // bottom: BorderSide(
                                //     color: selectedNav == e.title
                                //         ? Colors.white
                                //         : Colors.white24,
                                //     width:
                                //         selectedNav == e.title ? 2 : 1)
                              )),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SvgPicture.asset(
                                    "assets/${e.image}${selectedNav == e.title ? "Selected" : ""}.svg",
                                    width: iconSize,
                                    height: iconSize,
                                  ),
                                  Text(
                                    e.title,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 26,
                                        shadows: [
                                          Shadow(
                                              color:
                                                  Colors.black.withOpacity(0.7),
                                              offset: Offset(
                                                  1,
                                                  e.title == selectedNav
                                                      ? 1.5
                                                      : 3),
                                              blurRadius: e.title == selectedNav
                                                  ? 1
                                                  : 3)
                                        ],
                                        color: e.title == selectedNav
                                            ? Colors.white
                                            : AGLDemoColors.periwinkleColor,
                                        fontWeight: selectedNav == e.title
                                            ? FontWeight.bold
                                            : FontWeight.w300),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      //if (selectedNav == e.title)
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 2),
                        color: selectedNav == e.title
                            ? Colors.white
                            : Colors.transparent,
                        height: 3,
                      )
                    ],
                  )))
              .toList()),
    );

    // return Container(
    //   // decoration: const BoxDecoration(
    //   //   gradient: LinearGradient(
    //   //     begin: Alignment.topCenter,
    //   //     end: Alignment.bottomCenter,
    //   //     stops: [0.01, 1],
    //   //     colors: <Color>[Colors.black, Color(0xFF1A237E)],
    //   //   ),
    //   // ),
    //   //color: Color(0xFF0D113F),
    //   child: BottomNavigationBar(
    //     elevation: 0,
    //     showSelectedLabels: true,
    //     showUnselectedLabels: true,
    //     //backgroundColor: Colors.white,
    //     backgroundColor: const Color(0xFF0D113F),
    //     type: BottomNavigationBarType.fixed,
    //     items: const <BottomNavigationBarItem>[
    //       BottomNavigationBarItem(
    //           icon: Icon(Icons.directions_car),
    //           label: 'Home',
    //           backgroundColor: Color(0xFF0D113F)),
    //       BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: 'HVAC'),
    //       BottomNavigationBarItem(
    //           icon: Icon(Icons.library_music), label: 'Media'),
    //       BottomNavigationBarItem(
    //           icon: Icon(Icons.settings), label: 'Settings'),
    //       BottomNavigationBarItem(icon: Icon(Icons.apps), label: 'Apps'),
    //     ],
    //     currentIndex: _selectedIndex,
    //     selectedItemColor: Colors.white,
    //     unselectedItemColor: Colors.grey,

    //     onTap: _onItemTapped,
    //   ),
    // );
  }
}

class BottomBarItems {
  final String title;
  final String image;

  BottomBarItems({required this.title, required this.image});
}
