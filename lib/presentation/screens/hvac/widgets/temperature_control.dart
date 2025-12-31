import 'dart:async';

import 'package:flutter_ics_homescreen/export.dart';

enum Side { left, right }

class TemperatureControl extends ConsumerStatefulWidget {
  const TemperatureControl({super.key, required this.side});
  final Side side;

  @override
  TemperatureControlState createState() => TemperatureControlState();
}

class TemperatureControlState extends ConsumerState<TemperatureControl> {
  late Timer tempButtonTimer;
  bool isUpButtonHighlighted = false;
  bool isDownButtonHighlighted = false;

  onPressed({required String type, required Side side}) {
    int temperature = 0;
    if (side == Side.left) {
      temperature = ref
          .read(vehicleProvider.select((vehicle) => vehicle.driverTemperature));
    } else {
      temperature = ref.read(
          vehicleProvider.select((vehicle) => vehicle.passengerTemperature));
    }
    if (type == "add") {
      temperature = temperature + 1;
    } else if (type == "subtract") {
      temperature = temperature - 1;
    }
    // limit the temperature to 60-100F
    if (temperature <= 15) {
      temperature = 15;
    } else if (temperature >= 38) {
      temperature = 38;
    }
    bool isSynced = ref
        .read(vehicleProvider.select((vehicle) => vehicle.temperatureSynced));
    if (widget.side == Side.left) {
      ref
          .read(vehicleProvider.notifier)
          .setTemperature(side: Side.left, value: temperature);
      if (isSynced) {
        ref
            .read(vehicleProvider.notifier)
            .setTemperature(side: Side.right, value: temperature);
      }
    } else {
      if (isSynced) {
        ref.read(vehicleProvider.notifier).setTemperatureSynced(false);
      }
      ref
          .read(vehicleProvider.notifier)
          .setTemperature(side: Side.right, value: temperature);
    }
  }

  @override
  Widget build(BuildContext context) {
    int temperature = 0;
    if (widget.side == Side.left) {
      temperature = ref.watch(
          vehicleProvider.select((vehicle) => vehicle.driverTemperature));
    } else {
      temperature = ref.watch(
          vehicleProvider.select((vehicle) => vehicle.passengerTemperature));
    }
    final tempUnit =
        ref.watch(unitStateProvider.select((unit) => unit.temperatureUnit));

    //double iconSize = 32;
    double height = MediaQuery.sizeOf(context).height * 0.0417;
    double width = MediaQuery.sizeOf(context).width * 0.2112;

    return Column(
      children: [
        Material(
          color: Colors.transparent,
          child: GestureDetector(
            onTapDown: (value) {
              isUpButtonHighlighted = !isUpButtonHighlighted;
              onPressed(type: "add", side: widget.side);
            },
            onTapUp: (detail) {
              isUpButtonHighlighted = !isUpButtonHighlighted;
              setState(() {});
            },
            onLongPress: () {
              tempButtonTimer =
                  Timer.periodic(const Duration(milliseconds: 500), (timer) {
                onPressed(type: "add", side: widget.side);
              });
            },
            onLongPressEnd: (details) {
              setState(() {
                isUpButtonHighlighted = !isUpButtonHighlighted;

                tempButtonTimer.cancel();
              });
            },
            child: SizedBox(
                height: height,
                width: width,
                child: Image.asset(
                    "assets/${isUpButtonHighlighted ? 'UpPressed' : 'Up'}.png")),
          ),
        ),
        // ClipRect(
        //   clipper: MyCustomClipper(type: "top"),
        //   child: ClipRRect(
        //     borderRadius: const BorderRadius.only(
        //         bottomLeft: Radius.circular(22),
        //         bottomRight: Radius.circular(22)),
        //     child: Container(
        //       height: height,
        //       width: width,
        //       decoration: BoxDecoration(
        //           boxShadow: [
        //             BoxShadow(
        //                 offset: const Offset(1, 2),
        //                 blurRadius: 3,
        //                 color: Colors.black.withOpacity(0.7)),
        //           ],
        //           gradient: LinearGradient(colors: [
        //             AGLDemoColors.neonBlueColor,
        //             AGLDemoColors.neonBlueColor.withOpacity(0.20)
        //           ]),
        //           borderRadius: const BorderRadius.only(
        //               topLeft: Radius.circular(100),
        //               topRight: Radius.circular(100),
        //               bottomLeft: Radius.circular(10),
        //               bottomRight: Radius.circular(10))),
        //       child: Container(
        //         margin: const EdgeInsets.all(1),
        //         decoration: const BoxDecoration(
        //             color: AGLDemoColors.buttonFillEnabledColor,
        //             borderRadius: BorderRadius.only(
        //                 topLeft: Radius.circular(100),
        //                 topRight: Radius.circular(100),
        //                 bottomLeft: Radius.circular(10),
        //                 bottomRight: Radius.circular(10))),
        //         child: Material(
        //           color: Colors.transparent,
        //           child: InkWell(
        //             onTap: () {
        //               onPressed(type: "add");
        //             },
        //             child: Padding(
        //               padding: const EdgeInsets.only(bottom: 10),
        //               child: Icon(
        //                 Icons.arrow_upward,
        //                 color: Colors.white,
        //                 size: iconSize,
        //                 shadows: [
        //                   BoxShadow(
        //                       offset: const Offset(1, 2),
        //                       blurRadius: 3,
        //                       color: Colors.black.withOpacity(0.7)),
        //                 ],
        //               ),
        //             ),
        //           ),
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            tempUnit == TemperatureUnit.celsius
                ? '$temperature°C'
                : '${((temperature * 9 / 5) + 32).toStringAsFixed(0)}°F', //converting from celsius. Step F unit = 2
            style: GoogleFonts.brunoAce(fontSize: 44, height: 1.25),
          ),
        ),
        Material(
          color: Colors.transparent,
          child: GestureDetector(
            onTapDown: (value) {
              isDownButtonHighlighted = !isDownButtonHighlighted;
              onPressed(type: "subtract", side: widget.side);
            },
            onTapUp: (detail) {
              setState(() {
                isDownButtonHighlighted = !isDownButtonHighlighted;
              });
            },
            onLongPress: () {
              tempButtonTimer =
                  Timer.periodic(const Duration(milliseconds: 500), (timer) {
                onPressed(type: "subtract", side: widget.side);
              });
            },
            onLongPressEnd: (details) {
              setState(() {
                isDownButtonHighlighted = !isDownButtonHighlighted;

                tempButtonTimer.cancel();
              });
            },
            child: SizedBox(
                height: height,
                width: width,
                child: Image.asset(
                    "assets/${isDownButtonHighlighted ? 'DownPressed' : 'Down'}.png")),
          ),
        ),
        // ClipRect(
        //     clipper: MyCustomClipper(type: "bottom"),
        //     child: ClipRRect(
        //       borderRadius: const BorderRadius.only(
        //           topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        //       child: Container(
        //           height: height,
        //           width: width,
        //           decoration: BoxDecoration(
        //               boxShadow: [
        //                 BoxShadow(
        //                     offset: const Offset(1, 2),
        //                     blurRadius: 3,
        //                     color: Colors.black.withOpacity(0.7)),
        //               ],
        //               gradient: LinearGradient(colors: [
        //                 AGLDemoColors.neonBlueColor,
        //                 AGLDemoColors.neonBlueColor.withOpacity(0.20)
        //               ]),
        //               border: Border.all(color: Colors.white12),
        //               borderRadius: const BorderRadius.only(
        //                   bottomLeft: Radius.circular(100),
        //                   bottomRight: Radius.circular(100),
        //                   topLeft: Radius.circular(10),
        //                   topRight: Radius.circular(10))),
        //           child: Container(
        //             margin: const EdgeInsets.all(1),
        //             decoration: const BoxDecoration(
        //                 color: AGLDemoColors.buttonFillEnabledColor,
        //                 borderRadius: BorderRadius.only(
        //                     bottomLeft: Radius.circular(100),
        //                     bottomRight: Radius.circular(100),
        //                     topLeft: Radius.circular(10),
        //                     topRight: Radius.circular(10))),
        //             child: Material(
        //               color: Colors.transparent,
        //               child: InkWell(
        //                 onTap: () {
        //                   onPressed(type: "subtract");
        //                 },
        //                 child: Padding(
        //                   padding: const EdgeInsets.only(top: 10),
        //                   child: Icon(
        //                     Icons.arrow_downward,
        //                     color: Colors.white,
        //                     size: iconSize,
        //                     shadows: [
        //                       BoxShadow(
        //                           offset: const Offset(1, 2),
        //                           blurRadius: 3,
        //                           color: Colors.black.withOpacity(0.7)),
        //                     ],
        //                   ),
        //                 ),
        //               ),
        //             ),
        //           )),
        //     )),
      ],
    );
  }
}

class MyCustomClipper extends CustomClipper<Rect> {
  final String type;

  MyCustomClipper({super.reclip, required this.type});
  @override
  Rect getClip(Size size) {
    // Clip 10 pixels from the top of the container
    return Rect.fromPoints(
      Offset(0, type == "top" ? 0 : 10),
      Offset(size.width, type == "top" ? size.height - 10 : size.height),
    );
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return false;
  }
}

class CustomShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 5.0;

    final path = Path();

    // Draw the top part of the oval
    path.moveTo(0.0, size.height / 2.0);
    path.quadraticBezierTo(
        size.width / 3.0, size.height / 2.0, size.width / 2.0, size.height);

    // Draw the straight line for the bottom part
    path.lineTo(size.width / 2.0, size.height);

    // Draw the left part of the oval
    path.quadraticBezierTo(size.width / 3.0, 0.0, 0.0, 0.0);

    // Close the path
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
