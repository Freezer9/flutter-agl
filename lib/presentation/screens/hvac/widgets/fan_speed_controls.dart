import 'package:flutter_ics_homescreen/export.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:rive/rive.dart' as rive;

class FanSpeedControls extends ConsumerStatefulWidget {
  const FanSpeedControls({super.key});

  @override
  FanSpeedControlsState createState() => FanSpeedControlsState();
}

class FanSpeedControlsState extends ConsumerState<FanSpeedControls>
    with TickerProviderStateMixin {
  bool isPressed = false;
  LinearGradient gradientEnable1 = const LinearGradient(colors: <Color>[
    Color(0xFF2962FF),
    Color(0x802962FF),
  ]);
  LinearGradient gradientEnable2 = const LinearGradient(colors: <Color>[
    Color(0xFF1A237E),
    Color(0xFF141F64),
  ]);
  bool isMainACSelected = false;
  late AnimationController animationController;
  double controlProgress = 0.0;
  int selectedFanSpeed = 0;
  late rive.RiveAnimationController _controller;
  bool isButtonHighlighted = false;

  bool _isPlaying = false;

  /// Tracks if the animation is playing by whether controller is running
  bool get isPlaying => _controller.isActive;

  @override
  void initState() {
    super.initState();
    _controller = rive.OneShotAnimation(
      'Fan Spin',
      autoplay: false,
      onStop: () => setState(() => _isPlaying = false),
      onStart: () => setState(() => _isPlaying = true),
    );
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    animationController.addListener(() {
      setState(() {
        // _currentColorIndex = (_currentColorIndex + 1) % colorsList.length;
      }); // Trigger a rebuild to repaint the CustomPaint
    });
    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.sizeOf(context).height * 0.13021;
    double fanSpeedWidth = MediaQuery.sizeOf(context).width * 0.35;
    double fanSpeedHeight = MediaQuery.sizeOf(context).height * 0.15;
    double strokeWidth = MediaQuery.sizeOf(context).height * 0.03;

    double iconSize = 80;

    int selectedFanSpeed =
        ref.watch(vehicleProvider.select((vehicle) => vehicle.fanSpeed));
    controlProgress = selectedFanSpeed * 0.3;

    return Stack(
      children: [
        Center(
          child: CustomPaint(
            size: Size(
                fanSpeedWidth, fanSpeedHeight), // Set the desired size here
            painter: AnimatedColorPainter(
              animationController,
              controlProgress,
              AGLDemoColors.blueGlowFillColor,
              AGLDemoColors.backgroundInsetColor,
              strokeWidth,
            ),
          ),
        ),
        Center(
            child: Container(
          margin: const EdgeInsets.only(top: 3),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
                colors: !isButtonHighlighted
                    ? [
                        AGLDemoColors.neonBlueColor,
                        AGLDemoColors.neonBlueColor.withOpacity(0.2)
                      ]
                    : [
                        AGLDemoColors.resolutionBlueColor,
                        const Color(0xff141F64)
                      ]),
            boxShadow: isButtonHighlighted
                ? [
                    BoxShadow(
                        offset: Offset(isButtonHighlighted ? 1 : 1,
                            isButtonHighlighted ? 2 : 2),
                        blurRadius: isButtonHighlighted ? 16 : 16,
                        spreadRadius: 0,
                        color: isButtonHighlighted
                            ? Colors.black.withOpacity(0.5)
                            : Colors.black)
                  ]
                : [],
          ),
          // border: Border.all(color: Colors.white12, width: 1),
          //width: 90,
          //height: 90,
          child: Container(
            margin: const EdgeInsets.all(1),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: const DecorationImage(
                image: AssetImage("assets/PlusVector.png"),
              ),
              border: GradientBoxBorder(
                width: 1,
                gradient: LinearGradient(
                  colors: [
                    isButtonHighlighted
                        ? AGLDemoColors.neonBlueColor
                        : AGLDemoColors.periwinkleColor.withOpacity(0.20),
                    isButtonHighlighted
                        ? AGLDemoColors.neonBlueColor.withOpacity(0.20)
                        : AGLDemoColors.periwinkleColor,
                  ],
                ),
              ),
            ),
            alignment: Alignment.center,
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                  splashColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  customBorder: const CircleBorder(),
                  onHighlightChanged: (value) {
                    setState(() {
                      isButtonHighlighted = value;
                    });
                  },
                  onTap: () {
                    setState(() {
                      if (controlProgress >= 0.80) {
                        controlProgress = 0.0;
                        isMainACSelected = false;
                        _isPlaying = false;
                        animationController.reverse();
                      } else {
                        _controller.isActive = true;
                        isMainACSelected = true;
                        _isPlaying = true;
                        controlProgress += 0.30;
                        animationController.forward();
                      }
                      ref
                          .read(vehicleProvider.notifier)
                          .updateFanSpeed(controlProgress ~/ 0.3);
                    });
                  },
                  onTapDown: (details) {},
                  onTapUp: (details) {},
                  child: Container(
                      width: size,
                      height: size,
                      alignment: Alignment.center,
                      child: !_isPlaying && controlProgress == 0.0
                          ? SvgPicture.asset(
                              "assets/ACMainButtonOff.svg",
                              width: iconSize,
                              height: iconSize,
                            )
                          : SizedBox(
                              width: iconSize,
                              height: iconSize,
                              child: rive.RiveAnimation.asset(
                                  'assets/new_file.riv',
                                  controllers: [_controller],
                                  onInit: (_) => setState(() {
                                        _controller.isActive = true;
                                      }))))),
            ),
          ),
        ))
      ],
    );
  }
}
