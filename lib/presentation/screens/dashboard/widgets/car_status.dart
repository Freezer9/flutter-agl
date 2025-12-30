// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:gradient_borders/gradient_borders.dart';

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
            height: 700,
            width: 750,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const LeftCarStatus(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 47.0),
                  // child: Image.asset(
                  //   'assets/mclarenf1.png',
                  //   width: 200,
                  //   height: 650,
                  //   fit: BoxFit.fitHeight,
                  // ),
                  child: SvgPicture.asset(
                    'assets/Car Illustration.svg',
                    width: 200,
                    height: 650,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                const RightCarStatus(),
              ],
            ),
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
    final frontLeftTire = ref.watch(
        f1TelemetryNotifierProvider.select((vehicle) => vehicle.frontLeftTire));
    ref.watch(f1TelemetryNotifierProvider
        .select((vehicle) => vehicle.frontRightTire));
    final rearLeftTire = ref.watch(
        f1TelemetryNotifierProvider.select((vehicle) => vehicle.rearLeftTire));
    ref.watch(
        f1TelemetryNotifierProvider.select((vehicle) => vehicle.rearRightTire));
    final frontLeftAngle = ref.watch(f1TelemetryNotifierProvider
        .select((vehicle) => vehicle.frontLeftAngle));
    ref.watch(f1TelemetryNotifierProvider
        .select((vehicle) => vehicle.frontRightAngle));
    final rearLeftAngle = ref.watch(
        f1TelemetryNotifierProvider.select((vehicle) => vehicle.rearLeftAngle));
    ref.watch(f1TelemetryNotifierProvider
        .select((vehicle) => vehicle.rearRightAngle));

    String frontLeftTireString = frontLeftTire.toString();
    String rearLeftTireString = rearLeftTire.toString();

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            WheelAngleIndicator(angle: frontLeftAngle),
            SizedBox(height: 8),
            TirePressureProgressIndicator(value: frontLeftTire.toDouble()),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  frontLeftTireString,
                  style: GoogleFonts.brunoAce(
                    textStyle: TextStyle(color: Colors.white, fontSize: 44),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                TirePressureUnitWidget(),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            WheelAngleIndicator(angle: rearLeftAngle),
            SizedBox(height: 8),
            TirePressureProgressIndicator(value: rearLeftTire.toDouble()),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  rearLeftTireString,
                  style: GoogleFonts.brunoAce(
                    textStyle: TextStyle(color: Colors.white, fontSize: 44),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                TirePressureUnitWidget(),
              ],
            ),
          ],
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
    final frontRightTire = ref.watch(f1TelemetryNotifierProvider
        .select((vehicle) => vehicle.frontRightTire));
    final rearRightTire = ref.watch(
        f1TelemetryNotifierProvider.select((vehicle) => vehicle.rearRightTire));
    final frontRightAngle = ref.watch(f1TelemetryNotifierProvider
        .select((vehicle) => vehicle.frontRightAngle));
    final rearRightAngle = ref.watch(f1TelemetryNotifierProvider
        .select((vehicle) => vehicle.rearRightAngle));

    String frontRightTireString = frontRightTire.toString();
    String rearRightTireString = rearRightTire.toString();

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WheelAngleIndicator(angle: frontRightAngle),
            SizedBox(height: 8),
            TirePressureProgressIndicator(value: frontRightTire.toDouble()),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  frontRightTireString,
                  style: GoogleFonts.brunoAce(
                    textStyle: TextStyle(color: Colors.white, fontSize: 44),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                TirePressureUnitWidget(),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WheelAngleIndicator(angle: rearRightAngle),
            SizedBox(height: 8),
            TirePressureProgressIndicator(value: rearRightTire.toDouble()),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  rearRightTireString,
                  style: GoogleFonts.brunoAce(
                    textStyle: TextStyle(color: Colors.white, fontSize: 44),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                TirePressureUnitWidget(),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class TirePressureProgressIndicator extends StatelessWidget {
  final double value;
  const TirePressureProgressIndicator({
    super.key,
    required this.value, // Require the value to be passed
  });

  @override
  Widget build(BuildContext context) {
    // Calculate the width as a percentage of the full width (74 in this case)
    final double fillWidth = (value / 35) * 74;

    return Stack(
      alignment: AlignmentDirectional.centerStart,
      children: [
        Container(
          width: 100,
          height: 24,
          decoration: BoxDecoration(
            border: GradientBoxBorder(
              gradient:
                  LinearGradient(colors: const [Colors.white30, Colors.white]),
            ),
          ),
        ),
        Positioned(
          left: 3,
          child: Container(
            width: fillWidth, // Use the calculated width here
            height: 18, // Match the height of the progress bar
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: const [AGLDemoColors.periwinkleColor, Colors.white],
                stops: [
                  0.8,
                  1,
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class TirePressureUnitWidget extends ConsumerWidget {
  const TirePressureUnitWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final unit =
        ref.watch(unitStateProvider.select((unit) => unit.pressureUnit));

    return Padding(
      padding: const EdgeInsets.only(left: 4.0, right: 1.0, bottom: 2.0),
      child: Text(
        unit == PressureUnit.kilopascals ? 'kPa' : 'Psi',
        style: TextStyle(
          fontSize: 26,
        ),
      ),
    );
  }
}

class WheelAngleIndicator extends StatelessWidget {
  final double angle;

  const WheelAngleIndicator({
    super.key,
    required this.angle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      height: 120,
      child: CustomPaint(
        painter: WheelPainter(angle: angle),
      ),
    );
  }
}

class WheelPainter extends CustomPainter {
  final double angle;

  WheelPainter({required this.angle});

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);

    // Rotate canvas based on angle
    canvas.save();
    canvas.translate(center.dx, center.dy);
    canvas.rotate(angle * (3.14159 / 180));
    canvas.translate(-center.dx, -center.dy);

    // Draw tire body (rounded rectangle)
    final tireWidth = size.width * 0.6;
    final tireHeight = size.height * 0.7;
    final tireRect = RRect.fromRectAndRadius(
      Rect.fromCenter(
        center: center,
        width: tireWidth,
        height: tireHeight,
      ),
      Radius.circular(8),
    );

    // Draw tire with dark gray color
    final tirePaint = Paint()
      ..color = Colors.grey.shade800
      ..style = PaintingStyle.fill;
    canvas.drawRRect(tireRect, tirePaint);

    // Draw tire tread pattern (vertical lines)
    final treadPaint = Paint()
      ..color = Colors.grey.shade900
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    const treadCount = 5;
    final treadSpacing = tireHeight / (treadCount + 1);
    for (int i = 1; i <= treadCount; i++) {
      final y = center.dy - tireHeight / 2 + (i * treadSpacing);
      canvas.drawLine(
        Offset(center.dx - tireWidth / 4, y),
        Offset(center.dx + tireWidth / 4, y),
        treadPaint,
      );
    }

    // Draw tire border
    final tireBorderPaint = Paint()
      ..color = Colors.grey.shade600
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    canvas.drawRRect(tireRect, tireBorderPaint);

    // Draw inner sidewall details
    final innerRect = RRect.fromRectAndRadius(
      Rect.fromCenter(
        center: center,
        width: tireWidth * 0.5,
        height: tireHeight * 0.9,
      ),
      Radius.circular(4),
    );
    final innerPaint = Paint()
      ..color = Colors.grey.shade700
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;
    canvas.drawRRect(innerRect, innerPaint);

    canvas.restore();
  }

  @override
  bool shouldRepaint(WheelPainter oldDelegate) => oldDelegate.angle != angle;
}
