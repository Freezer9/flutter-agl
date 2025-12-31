import 'package:flutter_ics_homescreen/presentation/icons/custom_icons.dart';

import '../../../../export.dart';

class RangeWidget extends ConsumerWidget {
  const RangeWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final range = ref.watch(vehicleProvider.select((vehicle) => vehicle.range));
    final unit =
        ref.watch(unitStateProvider.select((unit) => unit.distanceUnit));
    final rangeString = (unit == DistanceUnit.kilometers)
        ? (range / 1000.0).toStringAsFixed(0)
        : (range / 1609.0).toStringAsFixed(0);

    return Container(
      height: 130,
      width: 306,
      // padding: const EdgeInsets.all(10),
      decoration: const ShapeDecoration(
        gradient: RadialGradient(
          colors: [
            Color.fromARGB(255, 19, 24, 75),
            Color.fromARGB(127, 0, 0, 0)
          ],
          stops: [0, 0.7],
          radius: 1,
        ),
        //color: Colors.grey,
        shape: StadiumBorder(
            side: BorderSide(
          color: Color.fromARGB(156, 0, 0, 0),
          width: 2,
        )),
      ),
      alignment: Alignment.topLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            CustomIcons.range,
            color: Color(0xFF2962FF),
            size: 48,
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Range',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Color(0xFFC1D8FF),
                  fontSize: 26,
                ),
              ),
              RichText(
                text: TextSpan(
                    text: rangeString,
                    style: GoogleFonts.brunoAce(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 44,
                      ),
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: unit == DistanceUnit.kilometers ? ' km' : ' mi',
                        style: GoogleFonts.brunoAce(
                          textStyle: const TextStyle(
                              color: Color(0xFFC1D8FF), fontSize: 38),
                        ),
                      ),
                    ]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
