// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import '../../../../export.dart';

class CarStatus extends ConsumerWidget {
  const CarStatus({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
      child: Column(
        children: [
          SizedBox(
            height: 800,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: const LeftCarStatus()),
                const SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: const F1CarIllustration(),
                ),
                const SizedBox(width: 10),
                Expanded(child: const RightCarStatus()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class F1CarIllustration extends ConsumerWidget {
  const F1CarIllustration({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vehicle = ref.watch(vehicleProvider.select((vehicle) => vehicle));

    return SizedBox(
      width: 200,
      height: 750,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/mclarenf1.png',
            width: 200,
            height: 750,
            fit: BoxFit.fitHeight,
          ),

          // Front-left wheel angle indicator
          Align(
            alignment: const FractionalOffset(-0.1, 0.19),
            child: WheelAngleIndicator(angle: vehicle.frontLeftAngle),
          ),

          // Front-right wheel angle indicator
          Align(
            alignment: const FractionalOffset(1.1, 0.19),
            child: WheelAngleIndicator(angle: vehicle.frontRightAngle),
          ),

          // Rear-left wheel angle indicator
          Align(
            alignment: const FractionalOffset(-0.1, 0.87),
            child: WheelAngleIndicator(angle: vehicle.rearLeftAngle),
          ),

          // Rear-right wheel angle indicator
          Align(
            alignment: const FractionalOffset(1.1, 0.87),
            child: WheelAngleIndicator(angle: vehicle.rearRightAngle),
          ),
        ],
      ),
    );
  }
}

class LeftCarStatus extends ConsumerWidget {
  const LeftCarStatus({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vehicle = ref.watch(vehicleProvider.select((vehicle) => vehicle));

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        WheelStatus(
          angle: vehicle.frontLeftAngle,
          brakeTemperature: vehicle.frontLeftBrakeTemperature,
          innerTemperature: vehicle.frontLeftInnerTemperature,
          surfaceTemperature: vehicle.frontLeftSurfaceTemperature,
          tirePressure: vehicle.frontLeftTire,
          tireWear: vehicle.frontLeftTireWear,
          leftOrRight: "left",
        ),
        WheelStatus(
          angle: vehicle.rearLeftAngle,
          brakeTemperature: vehicle.rearLeftBrakeTemperature,
          innerTemperature: vehicle.rearLeftInnerTemperature,
          surfaceTemperature: vehicle.rearLeftSurfaceTemperature,
          tirePressure: vehicle.rearLeftTire,
          tireWear: vehicle.rearLeftTireWear,
          leftOrRight: "left",
          frontOrRear: "rear",
        ),
      ],
    );
  }
}

class RightCarStatus extends ConsumerWidget {
  const RightCarStatus({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vehicle = ref.watch(vehicleProvider.select((vehicle) => vehicle));

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        WheelStatus(
          angle: vehicle.frontRightAngle,
          brakeTemperature: vehicle.frontRightBrakeTemperature,
          innerTemperature: vehicle.frontRightInnerTemperature,
          surfaceTemperature: vehicle.frontRightSurfaceTemperature,
          tirePressure: vehicle.frontRightTire,
          tireWear: vehicle.frontRightTireWear,
          leftOrRight: "right",
        ),
        WheelStatus(
          angle: vehicle.rearRightAngle,
          brakeTemperature: vehicle.rearRightBrakeTemperature,
          innerTemperature: vehicle.rearRightInnerTemperature,
          surfaceTemperature: vehicle.rearRightSurfaceTemperature,
          tirePressure: vehicle.rearRightTire,
          tireWear: vehicle.rearRightTireWear,
          leftOrRight: "right",
          frontOrRear: "rear",
        ),
      ],
    );
  }
}
