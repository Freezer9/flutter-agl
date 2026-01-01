import '../../../../export.dart';

class WheelStatus extends StatelessWidget {
  final double angle;
  final int tirePressure;
  final int tireWear; // 0-100 percent
  final int innerTemperature;
  final int surfaceTemperature;
  final int brakeTemperature;
  final String leftOrRight;
  final String frontOrRear;

  const WheelStatus({
    super.key,
    required this.angle,
    required this.tirePressure,
    required this.innerTemperature,
    required this.tireWear,
    required this.surfaceTemperature,
    required this.brakeTemperature,
    required this.leftOrRight,
    this.frontOrRear = 'front',
  });

  @override
  Widget build(BuildContext context) {
    TextStyle tempStyle = const TextStyle(
      color: Colors.white,
      fontSize: 32,
      fontWeight: FontWeight.bold,
      shadows: [Shadow(blurRadius: 2, color: Colors.black)],
    );

    TextStyle labelStyle = const TextStyle(
      color: Colors.cyanAccent,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      shadows: [Shadow(blurRadius: 4, color: Colors.black)],
    );

    Color colorForInner(int v) {
      if (v < 100) return Colors.greenAccent;
      if (v < 130) return Colors.orangeAccent;
      return Colors.redAccent;
    }

    Color colorForSurface(int v) {
      if (v < 100) return Colors.greenAccent;
      if (v < 130) return Colors.orangeAccent;
      return Colors.redAccent;
    }

    Color colorForBrake(int v) {
      if (v < 500) return Colors.greenAccent;
      if (v < 1000) return Colors.orangeAccent;
      return Colors.redAccent;
    }

    SvgPicture svgPicture(String assetPath, Color color) {
      return SvgPicture.asset(
        assetPath,
        width: 40,
        height: 40,
        colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
      );
    }

    final tempColumn = Column(
      crossAxisAlignment: leftOrRight == "left"
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.end,
      children: [
        Row(
            mainAxisSize: MainAxisSize.min,
            children: leftOrRight == "left"
                ? [
                    svgPicture(
                      'assets/icons/tire_inner.svg',
                      colorForInner(innerTemperature),
                    ),
                    const SizedBox(width: 12),
                    Flexible(
                        child: FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.centerLeft,
                      child: Text('$innerTemperature°C',
                          style: tempStyle, maxLines: 1),
                    )),
                  ]
                : [
                    Flexible(
                        child: FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.centerRight,
                      child: Text('$innerTemperature°C',
                          style: tempStyle, maxLines: 1),
                    )),
                    const SizedBox(width: 12),
                    svgPicture(
                      'assets/icons/tire_inner.svg',
                      colorForInner(innerTemperature),
                    ),
                  ]),
        const SizedBox(height: 12),
        Row(
            mainAxisSize: MainAxisSize.min,
            children: leftOrRight == "left"
                ? [
                    svgPicture(
                      'assets/icons/tire_outer.svg',
                      colorForSurface(surfaceTemperature),
                    ),
                    const SizedBox(width: 12),
                    Flexible(
                        child: FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.centerLeft,
                      child: Text('$surfaceTemperature°C',
                          style: tempStyle, maxLines: 1),
                    )),
                  ]
                : [
                    Flexible(
                        child: FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.centerRight,
                      child: Text('$surfaceTemperature°C',
                          style: tempStyle, maxLines: 1),
                    )),
                    const SizedBox(width: 12),
                    svgPicture(
                      'assets/icons/tire_outer.svg',
                      colorForSurface(surfaceTemperature),
                    ),
                  ]),
        const SizedBox(height: 12),
        Row(
            mainAxisSize: MainAxisSize.min,
            children: leftOrRight == "left"
                ? [
                    svgPicture(
                      'assets/icons/car_brake.svg',
                      colorForBrake(brakeTemperature),
                    ),
                    const SizedBox(width: 12),
                    Flexible(
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.centerLeft,
                        child: Text('$brakeTemperature°C',
                            style: tempStyle, maxLines: 1),
                      ),
                    ),
                  ]
                : [
                    Flexible(
                        child: FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.centerRight,
                      child: Text('$brakeTemperature°C',
                          style: tempStyle, maxLines: 1),
                    )),
                    const SizedBox(width: 12),
                    svgPicture(
                      'assets/icons/car_brake.svg',
                      colorForBrake(brakeTemperature),
                    ),
                  ]),
      ],
    );

    final wheelStatusColumn = Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: leftOrRight == 'left'
              ? [
                  TireWearIndicator(percent: tireWear),
                  const SizedBox(width: 12),
                  Flexible(child: tempColumn),
                ]
              : [
                  Flexible(child: tempColumn),
                  const SizedBox(width: 12),
                  TireWearIndicator(percent: tireWear),
                ],
        ),
      ],
    );

    final tirePressureRow = Row(
        mainAxisSize: MainAxisSize.min,
        children: leftOrRight == "left"
            ? [
                const Icon(Icons.speed,
                    color: Colors.lightBlueAccent, size: 28),
                const SizedBox(width: 6),
                Text('$tirePressure',
                    style: tempStyle.copyWith(
                        fontSize: 30, color: Colors.lightBlueAccent)),
                const SizedBox(width: 4),
                Text('Psi', style: labelStyle),
              ]
            : [
                Text('$tirePressure',
                    style: tempStyle.copyWith(
                        fontSize: 30, color: Colors.lightBlueAccent)),
                const SizedBox(width: 4),
                Text('Psi', style: labelStyle),
                const SizedBox(width: 6),
                const Icon(Icons.speed,
                    color: Colors.lightBlueAccent, size: 28),
              ]);

    return Column(
        crossAxisAlignment: leftOrRight == 'left'
            ? CrossAxisAlignment.end
            : CrossAxisAlignment.start,
        children: frontOrRear == "front"
            ? [
                wheelStatusColumn,
                const SizedBox(height: 12),
                tirePressureRow,
              ]
            : [
                tirePressureRow,
                const SizedBox(height: 12),
                wheelStatusColumn,
              ]);
  }
}

class TireWearIndicator extends StatelessWidget {
  final int percent; // 0-100

  const TireWearIndicator({
    super.key,
    required this.percent,
  });

  Color _colorForPercent(int p) {
    if (p < 40) return Colors.greenAccent;
    if (p < 70) return Colors.orangeAccent;
    return Colors.redAccent;
  }

  @override
  Widget build(BuildContext context) {
    final clamped = percent.clamp(0, 100);
    final value = clamped / 100.0;
    final color = _colorForPercent(clamped);

    return SizedBox(
      width: 120,
      height: 120,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: CircularProgressIndicator(
              value: value,
              strokeWidth: 14,
              backgroundColor: Colors.grey.shade800,
              valueColor: AlwaysStoppedAnimation<Color>(color),
            ),
          ),
          Text(
            '$clamped%',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.bold,
              shadows: [Shadow(blurRadius: 4, color: Colors.black)],
            ),
          ),
        ],
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
      const Radius.circular(8),
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
      const Radius.circular(4),
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
