import 'dart:math';
import 'package:flutter_ics_homescreen/export.dart';

import 'custom_circle.dart';

class RPMProgressIndicator extends ConsumerStatefulWidget {
  const RPMProgressIndicator({super.key});

  @override
  RPMProgressIndicatorState createState() => RPMProgressIndicatorState();
}

class RPMProgressIndicatorState extends ConsumerState<RPMProgressIndicator>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      /// [AnimationController]s can be created with `vsync: this` because of
      /// [TickerProviderStateMixin].
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        //setState(() {});
      });
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final rpm =
        ref.watch(vehicleProvider.select((vehicle) => vehicle.engineSpeed));
    return Column(
      children: [
        SizedBox(
          height: 252,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Text(
                rpm.toStringAsFixed(0),
                style: GoogleFonts.brunoAce(
                  textStyle: const TextStyle(color: Colors.white, fontSize: 44),
                ),
              ),
              Transform.rotate(
                  angle: pi,
                  child: Stack(
                    children: [
                      if (rpm > 6500)
                        SizedBox(
                          height: 200,
                          width: 200,
                          child: CircularProgressIndicator(
                            strokeWidth: 12,
                            backgroundColor: Colors.transparent,
                            //value: controller.value,
                            valueColor: const AlwaysStoppedAnimation<Color>(
                                AGLDemoColors.redProgressStrokeColor),
                            value: rpm * (1 / maxRpm),
                          ),
                        ),
                      SizedBox(
                        height: 200,
                        width: 200,
                        child: CircularProgressIndicator(
                          strokeWidth: 12,
                          backgroundColor: Colors.transparent,
                          //value: controller.value,
                          valueColor: const AlwaysStoppedAnimation<Color>(
                              AGLDemoColors.jordyBlueColor),
                          value: rpm >= 6500
                              ? 6500 * (1 / maxRpm)
                              : rpm * (1 / maxRpm),
                        ),
                      ),
                    ],
                  )),
              Transform.rotate(
                  angle: pi,
                  child: SizedBox(
                    height: 220,
                    width: 220,
                    child: CustomPaint(
                      foregroundPainter: CirclePainter(
                        value: rpm.toDouble(),
                        maxValue: maxRpm.toDouble(),
                        isRPM: true,
                      ),
                    ),
                  )),
            ],
          ),
        ),
        const Text(
          'RPM',
          style: TextStyle(color: Colors.white, fontSize: 40),
        ),
      ],
    );
  }
}

class SpeedProgressIndicator extends ConsumerStatefulWidget {
  const SpeedProgressIndicator({super.key});

  @override
  SpeedProgressIndicatorState createState() => SpeedProgressIndicatorState();
}

class SpeedProgressIndicatorState extends ConsumerState<SpeedProgressIndicator>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      /// [AnimationController]s can be created with `vsync: this` because of
      /// [TickerProviderStateMixin].
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        //setState(() {});
      });
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final speed = ref.watch(vehicleProvider.select((vehicle) => vehicle.speed));
    final unit =
        ref.watch(unitStateProvider.select((unit) => unit.distanceUnit));
    return Column(
      children: [
        SizedBox(
          height: 252,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Text(
                unit == DistanceUnit.kilometers
                    ? speed.toStringAsFixed(0)
                    : (speed * 1.609).toStringAsFixed(0),
                style: GoogleFonts.brunoAce(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 44,
                  ),
                ),
              ),
              Transform.rotate(
                  angle: pi,
                  child: SizedBox(
                    height: 200,
                    width: 200,
                    child: CircularProgressIndicator(
                      strokeWidth: 12,
                      //backgroundColor: const Color(0xFF2962FF),
                      //value: controller.value,
                      value: unit == DistanceUnit.kilometers
                          ? speed * (1 / maxSpeed)
                          : (speed * (1 / maxSpeed) * 1.609),
                      semanticsLabel: 'Speed progress indicator',
                    ),
                  )),
              Transform.rotate(
                  angle: pi,
                  child: SizedBox(
                    height: 220,
                    width: 220,
                    child: CustomPaint(
                      foregroundPainter:
                          CirclePainter(value: speed, maxValue: maxSpeed),
                    ),
                  )),
            ],
          ),
        ),
        Text(
          unit == DistanceUnit.kilometers ? 'km/h' : 'mph',
          style: const TextStyle(color: Colors.white, fontSize: 40),
        ),
      ],
    );
  }
}

class BatteryProgressIndicator extends ConsumerStatefulWidget {
  const BatteryProgressIndicator({super.key});

  @override
  BatteryProgressIndicatorState createState() =>
      BatteryProgressIndicatorState();
}

class BatteryProgressIndicatorState
    extends ConsumerState<BatteryProgressIndicator>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      /// [AnimationController]s can be created with `vsync: this` because of
      /// [TickerProviderStateMixin].
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        //setState(() {});
      });
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final batteryLevel =
        ref.watch(vehicleProvider.select((vehicle) => vehicle.batteryLevel));
    final isLowBattery = batteryLevel <= lowBatteryThreshold;

    return Column(
      children: [
        SizedBox(
          height: 252,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Text(
                '$batteryLevel%',
                style: GoogleFonts.brunoAce(
                  textStyle: TextStyle(
                    color: isLowBattery ? Colors.red : Colors.white,
                    fontSize: 44,
                  ),
                ),
              ),
              // Low battery warning indicator
              if (isLowBattery)
                const Positioned(
                  top: 10,
                  child: Icon(
                    Icons.warning_amber_rounded,
                    color: Colors.red,
                    size: 30,
                  ),
                ),
              Transform.rotate(
                  angle: pi,
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 200,
                        width: 200,
                        child: CircularProgressIndicator(
                          strokeWidth: 12,
                          backgroundColor: Colors.transparent,
                          value: batteryLevel >= 12
                              ? 12 * (1 / maxBatteryLevel)
                              : batteryLevel * (1 / maxBatteryLevel),
                          valueColor: AlwaysStoppedAnimation<Color>(isLowBattery
                              ? Colors.red
                              : AGLDemoColors.redProgressStrokeColor),
                        ),
                      ),
                      if (batteryLevel > 12)
                        SizedBox(
                          height: 200,
                          width: 200,
                          child: CircularProgressIndicator(
                            strokeWidth: 12,
                            backgroundColor: Colors.transparent,
                            valueColor: AlwaysStoppedAnimation<Color>(
                                isLowBattery
                                    ? Colors.orange
                                    : AGLDemoColors.jordyBlueColor),
                            value: batteryLevel * (1 / maxBatteryLevel),
                          ),
                        ),
                    ],
                  )),
              Transform.rotate(
                  angle: pi,
                  child: SizedBox(
                    height: 220,
                    width: 220,
                    child: CustomPaint(
                      foregroundPainter: CirclePainter(
                          value: batteryLevel.toDouble(),
                          maxValue: maxBatteryLevel,
                          isFuel: true,
                          isRPM: false),
                    ),
                  )),
            ],
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Battery',
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
            if (isLowBattery) ...[
              const SizedBox(width: 8),
              const Icon(
                Icons.battery_alert,
                color: Colors.red,
                size: 36,
              ),
            ],
          ],
        ),
      ],
    );
  }
}
