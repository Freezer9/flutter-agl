import '../../../../export.dart';

class GearIndicator extends ConsumerWidget {
  const GearIndicator({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gear = ref.watch(vehicleProvider.select((vehicle) => vehicle.gear));
    final brake = ref.watch(vehicleProvider.select((vehicle) => vehicle.brake));
    final throttle =
        ref.watch(vehicleProvider.select((vehicle) => vehicle.throttle));
    final revLights =
        ref.watch(vehicleProvider.select((vehicle) => vehicle.revLights));

    final gearDisplay = gear == 0
        ? 'N'
        : gear == -1
            ? 'R'
            : gear.toString();

    return Column(
      children: [
        // Rev Lights Indicator (top)
        _RevLightsIndicator(revLights: revLights),
        const SizedBox(height: 16),

        // Main panel with gear, brake, and throttle
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _PedalIndicator(
              label: 'BRK',
              value: brake,
              color: Colors.redAccent,
            ),
            const SizedBox(width: 16),

            // Gear indicator (center)
            Container(
              width: 160,
              height: 240,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AGLDemoColors.jordyBlueColor.withOpacity(0.3),
                    Colors.transparent,
                  ],
                ),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: AGLDemoColors.jordyBlueColor,
                  width: 3,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'GEAR',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 3,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    gearDisplay,
                    style: GoogleFonts.brunoAce(
                      textStyle: TextStyle(
                        color: gear == 0
                            ? AGLDemoColors.jordyBlueColor
                            : Colors.white,
                        fontSize: 100,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),

            // Throttle indicator (right)
            _PedalIndicator(
              label: 'THR',
              value: throttle,
              color: Colors.greenAccent,
            ),
          ],
        ),
      ],
    );
  }
}

class _RevLightsIndicator extends StatelessWidget {
  final int revLights;

  const _RevLightsIndicator({required this.revLights});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 680,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.5),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: AGLDemoColors.jordyBlueColor.withOpacity(0.5),
          width: 2,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(15, (index) {
          // Check if bit at position 'index' is set
          bool isLit = (revLights & (1 << index)) != 0;
          Color ledColor;

          // Color coding: green (0-4), yellow (5-9), red (10-14)
          if (index < 5) {
            ledColor = Colors.green;
          } else if (index < 10) {
            ledColor = Colors.yellow;
          } else {
            ledColor = Colors.red;
          }

          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 4),
            width: 30,
            height: 40,
            decoration: BoxDecoration(
              color: isLit ? ledColor : Colors.grey.shade800,
              borderRadius: BorderRadius.circular(4),
              boxShadow: isLit
                  ? [
                      BoxShadow(
                        color: ledColor.withOpacity(0.6),
                        blurRadius: 8,
                        spreadRadius: 2,
                      ),
                    ]
                  : null,
            ),
          );
        }),
      ),
    );
  }
}

class _PedalIndicator extends StatelessWidget {
  final String label;
  final double value;
  final Color color;

  const _PedalIndicator({
    required this.label,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 240,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: color.withOpacity(0.5),
          width: 3,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Text(
              label,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: RotatedBox(
                quarterTurns: 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: LinearProgressIndicator(
                    value: value.clamp(0.0, 1.0),
                    backgroundColor: Colors.grey.shade800,
                    valueColor: AlwaysStoppedAnimation<Color>(color),
                    minHeight: double.infinity,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: Text(
              '${(value * 100).toStringAsFixed(0)}%',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
