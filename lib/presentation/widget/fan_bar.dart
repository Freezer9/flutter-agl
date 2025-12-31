import '../../export.dart';
import 'package:flutter_ics_homescreen/presentation/icons/custom_icons.dart';

enum FanMode { off, min, medium, max }

class FanBar extends ConsumerStatefulWidget {
  const FanBar({super.key});

  @override
  FanBarState createState() => FanBarState();
}

class FanBarState extends ConsumerState<FanBar> {
  int selectedFanSpeed = 0;

  @override
  Widget build(BuildContext context) {
    final vehicle = ref.watch(vehicleProvider.select((vehicle) => vehicle));
    selectedFanSpeed = vehicle.fanSpeed;

    return Column(children: [
      Container(
        padding: EdgeInsets.zero,
        //width: 80,
        height: 256,
        decoration: const ShapeDecoration(
          // gradient: RadialGradient(
          //   colors: [Color.fromARGB(255, 19, 24, 75), Colors.black],
          //   stops: [0, 0.9],
          //   radius: 1,
          // ),
          color: AGLDemoColors.buttonFillEnabledColor,
          shape: StadiumBorder(
              side: BorderSide(
            color: Color(0xFF5477D4),
            width: 1,
          )),
        ),
        //alignment: Alignment.topLeft,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Material(
              color: Colors.transparent,
              child: SizedBox(
                width: 80,
                height: 64,
                child: IconButton(
                  isSelected: selectedFanSpeed == 3,
                  padding: EdgeInsets.zero,
                  color: AGLDemoColors.periwinkleColor,
                  onPressed: () {
                    ref.read(vehicleProvider.notifier).updateFanSpeed(3);
                  },
                  icon: selectedFanSpeed == 3
                      ? Stack(
                          alignment: Alignment.center,
                          children: [
                            SvgPicture.asset('assets/fanButtonBg.svg'),
                            const Icon(
                              CustomIcons.fan_on_enabled,
                              color: Colors.white,
                              size: 40,
                            ),
                          ],
                        )
                      : const Icon(
                          CustomIcons.fan_on_enabled,
                          size: 40,
                        ),
                ),
              ),
            ),
            Material(
              color: Colors.transparent,
              child: SizedBox(
                width: 64,
                height: 64,
                child: IconButton(
                  isSelected: selectedFanSpeed == 2,
                  padding: EdgeInsets.zero,
                  color: AGLDemoColors.periwinkleColor,
                  onPressed: () {
                    ref.read(vehicleProvider.notifier).updateFanSpeed(2);
                  },
                  icon: selectedFanSpeed == 2
                      ? Stack(
                          alignment: Alignment.center,
                          children: [
                            SvgPicture.asset('assets/fanButtonBg.svg'),
                            const Icon(
                              CustomIcons.fan_on_enabled,
                              color: Colors.white,
                              size: 28,
                            ),
                          ],
                        )
                      : const Icon(
                          CustomIcons.fan_on_enabled,
                          size: 28,
                        ),
                ),
              ),
            ),
            Material(
              color: Colors.transparent,
              child: SizedBox(
                width: 64,
                height: 64,
                child: IconButton(
                  isSelected: selectedFanSpeed == 1,
                  iconSize: 20,
                  padding: EdgeInsets.zero,
                  color: AGLDemoColors.periwinkleColor,
                  onPressed: () {
                    ref.read(vehicleProvider.notifier).updateFanSpeed(1);
                  },
                  icon: selectedFanSpeed == 1
                      ? Stack(
                          alignment: Alignment.center,
                          children: [
                            SvgPicture.asset('assets/fanButtonBg.svg'),
                            const Icon(
                              CustomIcons.fan_on_enabled,
                              color: Colors.white,
                              size: 20,
                            ),
                          ],
                        )
                      : const Icon(
                          CustomIcons.fan_on_enabled,
                          size: 20,
                        ),
                ),
              ),
            ),
          ],
        ),
      ),
      const SizedBox(height: 10),
      Container(
          width: 80,
          height: 80,
          decoration: const ShapeDecoration(
            // gradient: RadialGradient(
            //   colors: [Color.fromARGB(255, 19, 24, 75), Colors.black],
            //   stops: [0, 0.9],
            //   radius: 1,
            // ),
            color: AGLDemoColors.buttonFillEnabledColor,
            shape: StadiumBorder(
                side: BorderSide(
              color: Color(0xFF5477D4),
              width: 1,
            )),
          ),
          //alignment: Alignment.topLeft,
          child: Material(
            color: Colors.transparent,
            child: IconButton(
              isSelected: selectedFanSpeed == 0,
              padding: EdgeInsets.zero,
              color: AGLDemoColors.periwinkleColor,
              onPressed: () {
                ref.read(vehicleProvider.notifier).updateFanSpeed(0);
              },
              icon: selectedFanSpeed == 0
                  ? Stack(
                      alignment: Alignment.center,
                      children: [
                        SvgPicture.asset('assets/fanButtonBg.svg'),
                        const Icon(
                          Icons.mode_fan_off,
                          color: Colors.white,
                          size: 28.4,
                        ),
                      ],
                    )
                  : const Icon(
                      Icons.mode_fan_off,
                      size: 28.4,
                    ),
            ),
          )),
    ]);
  }
}
