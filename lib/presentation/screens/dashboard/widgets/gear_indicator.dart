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
    final drsMode =
        ref.watch(vehicleProvider.select((vehicle) => vehicle.drsMode));
    final ersMode =
        ref.watch(vehicleProvider.select((vehicle) => vehicle.ersMode));

    final gearDisplay = gear == 0
        ? 'N'
        : gear == -1
            ? 'R'
            : gear.toString();

    return Column(
      children: [
        const TemperatureWidget(),

        const SizedBox(height: 32),
        _RevLightsIndicator(revLights: revLights),
        const SizedBox(height: 16),

        // Main panel with gear, brake, and throttle
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              margin: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: drsMode
                    ? Colors.green.withOpacity(0.2)
                    : Colors.grey.withOpacity(0.15),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: drsMode ? Colors.greenAccent : Colors.grey.shade700,
                  width: 2,
                ),
              ),
              child: SizedBox(
                width: 100,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'DRS',
                      style: TextStyle(
                        color: drsMode ? Colors.greenAccent : Colors.white70,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      drsMode ? 'ACTIVE' : 'INACTIVE',
                      style: TextStyle(
                        fontSize: 20,
                        color: drsMode ? Colors.greenAccent : Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            _PedalIndicator(
              label: 'BRK',
              value: brake,
              color: Colors.redAccent,
            ),
            const SizedBox(width: 16),

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

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              margin: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: AGLDemoColors.jordyBlueColor.withOpacity(0.5),
                  width: 2,
                ),
              ),
              child: SizedBox(
                width: 100,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'ERS',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      _ersLabel(ersMode),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
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
    // revLights is a percentage (0-100)
    int totalBoxes = 15;
    double percent = revLights.clamp(0, 100) / 100.0;
    int litCount = (percent * totalBoxes).round();

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
        children: List.generate(totalBoxes, (index) {
          bool isLit = index < litCount;
          Color ledColor;
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

String _ersLabel(int mode) {
  switch (mode) {
    case 1:
      return 'MEDIUM';
    case 2:
      return 'HOTLAP';
    case 3:
      return 'OVERTAKE';
    default:
      return 'NONE';
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
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade800,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        height: double.infinity,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade800,
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      FractionallySizedBox(
                        heightFactor: value.clamp(0.0, 1.0),
                        child: Container(
                          width: 40,
                          decoration: BoxDecoration(
                            color: color,
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
