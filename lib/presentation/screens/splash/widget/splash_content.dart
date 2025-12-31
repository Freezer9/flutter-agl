import 'package:flutter_ics_homescreen/export.dart';

class SplashContent extends ConsumerStatefulWidget {
  const SplashContent({super.key});

  @override
  SplashContentState createState() => SplashContentState();
}

class SplashContentState extends ConsumerState<SplashContent>
    with TickerProviderStateMixin {
  late Animation<double> _fadeAnimation;
  late AnimationController _lottieController;
  late AnimationController _fadeController;
  bool _showLottieAnimation =
      true; // New state to control the visibility of Lottie animation

  @override
  void initState() {
    super.initState();
    // If you need to control the Lottie animation, initialize its controller
    _lottieController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 7),
    );

    Future.delayed(const Duration(milliseconds: 1500), () {
      _lottieController.repeat();
    });

    // Initialize the fade animation controller
    _fadeController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1), // Fade transition duration
    );

    // Set up the fade animation
    _fadeAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(_fadeController)
          ..addListener(() {
            // Check the status of the animation and set the state to hide Lottie when fading starts.
            if (_fadeAnimation.value > 0.0 && _showLottieAnimation) {
              setState(() {
                _showLottieAnimation = false;
              });
            }
          });

    // Start the fade-in transition after the Lottie animation has played for some time
    Future.delayed(const Duration(seconds: 6), () {
      // Stop the Lottie animation if needed
      _lottieController.stop();

      // Start the fade-in transition
      _fadeController.forward();
    });
  }

  @override
  void dispose() {
    // Dispose the animation controller to release resources.
    _fadeController.dispose();
    _lottieController.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    ref.read(vehicleClientProvider).startDataListener();
    ref.read(radioClientProvider).run();
    ref.read(mpdClientProvider).run();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (_showLottieAnimation)
          Center(
            child: Lottie.asset(
              'assets/animations/Logo_JSON.json',
              controller: _lottieController,
              onLoaded: (composition) {
                _lottieController.duration = composition.duration;
              },
            ),
          ),
        // FadeTransition wraps existing UI.
        FadeTransition(
          opacity: _fadeAnimation,
          child: Center(
            child: buildWarningUI(),
          ),
        ),
      ],
    );
  }

  Widget buildWarningUI() {
    return Column(
      children: [
        const Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'WARNING:',
                style: TextStyle(color: Color(0xFFC1D8FF), fontSize: 44),
              ),
              SizedBox(height: 38),
              SizedBox(
                //color: Colors.amber,
                width: 757,
                height: 488,
                child: Text(
                  splashWarning,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      height: 1.7,
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
        GenericButton(
          height: 122,
          width: 452,
          text: 'Continue',
          onTap: () {
            ref.read(appProvider.notifier).update(AppState.dashboard);
          },
        ),
        const SizedBox(
          height: 72,
        )
      ],
    );
  }
}
