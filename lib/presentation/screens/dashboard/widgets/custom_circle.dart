import 'dart:math' as math;
import 'package:flutter_ics_homescreen/export.dart';

class CirclePainter extends CustomPainter {
  final double value;
  final double maxValue;
  final bool? isRPM;
  final bool? isFuel;

  CirclePainter({
    required this.value,
    required this.maxValue,
    this.isRPM = false,
    this.isFuel = false,
  });
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AGLDemoColors.neonBlueColor
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;
    final paintRed = Paint()
      ..color = const Color(0xFFBF360C)
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    final smallCirclePaint = Paint()
      ..color = AGLDemoColors.resolutionBlueColor
      ..strokeWidth = 10
      // Use [PaintingStyle.fill] if you want the circle to be filled.
      ..style = PaintingStyle.fill;

    final center = Offset(size.width / 2, size.height / 2);

    final double radius = (size.width / 2) - 10;

    const totalDegree = 360;

    // Total ticks to display
    var totalTicks = isFuel! ? 4 : 8;

    var values = [];
    for (int i = 0; i < totalTicks; i++) {
      values.add(i * (maxValue / totalTicks));
    }

    /// The angle between each tick
    var unitAngle = totalDegree / totalTicks;
    for (int i = 0; i < totalTicks; i++) {
      final angle = -90.0.radians + (i * unitAngle).radians;
      final xOffset = radius * math.cos(angle);
      final yOffset = radius * math.sin(angle);
      final offset = Offset(center.dx + xOffset, center.dy + yOffset);
      if (value > values[i]) {
        canvas.drawCircle(offset, 3, smallCirclePaint);
      } else {
        canvas.drawCircle(offset, 3, smallCirclePaint..color = Colors.white);
      }
    }

    final rect = Rect.fromCenter(
      center: center,
      width: ((size.width / 2.4) * 2) + 2,
      height: (size.width / 2.4) * 2 + 2,
    );
    canvas.drawArc(
      rect,
      _deg2Rads(-90),
      _deg2Rads(360),
      false,
      paint,
    );
    if (isRPM == true) {
      canvas.drawArc(
        rect,
        _deg2Rads(202),
        _deg2Rads(68),
        false,
        paintRed,
      );
    }
    if (isFuel == true) {
      canvas.drawArc(
        rect,
        _deg2Rads(-90),
        _deg2Rads(80),
        false,
        paintRed,
      );
    }

    //canvas.drawArc(rect, pi / 4, pi * 3 / 4, false, paint);
  }

  double _deg2Rads(num deg) {
    return (deg * math.pi) / 180.0;
  }

  @override
  bool shouldRepaint(oldDelegate) => false;
}

extension on num {
  /// This is an extension we created so we can easily convert a value  /// to a radian value
  double get radians => (this * math.pi) / 180.0;
}
