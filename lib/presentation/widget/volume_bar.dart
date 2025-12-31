import 'package:flutter_ics_homescreen/presentation/icons/custom_icons.dart';

import '../../export.dart';

class VolumeBar extends ConsumerStatefulWidget {
  const VolumeBar({super.key});

  @override
  VolumeBarState createState() => VolumeBarState();
}

class VolumeBarState extends ConsumerState<VolumeBar> {
  double val = 0;
  @override
  void initState() {
    super.initState();
  }

  void increaseVolume() {
    val += 10;
    if (val > 100) {
      val = 100;
    }
    setState(() {
      ref.read(audioStateProvider.notifier).setVolume(val);
    });
  }

  void decreaseVolume() {
    val -= 10;
    if (val < 0) {
      val = 0;
    }
    setState(() {
      ref.read(audioStateProvider.notifier).setVolume(val);
    });
  }

  void setVolume(double newWalue) {
    setState(() {
      val = newWalue;
      ref.read(audioStateProvider.notifier).setVolume(val);
    });
  }

  void play() {
    ref.read(playControllerProvider).play();
  }

  void pause() {
    ref.read(playControllerProvider).pause();
  }

  @override
  Widget build(BuildContext context) {
    final volumeValue =
        ref.watch(audioStateProvider.select((audio) => audio.volume));
    val = volumeValue.toDouble();
    final isPlaying = ref.watch(playStateProvider);

    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 80,
          height: 418,
          //padding: const EdgeInsets.all(16),
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
            children: [
              SizedBox(
                height: 68.0,
                width: 56.0,
                child: IconButton(
                  padding: EdgeInsets.zero,
                  color: AGLDemoColors.periwinkleColor,
                  onPressed: () {
                    increaseVolume();
                  },
                  icon: const Icon(
                    CustomIcons.vol_max,
                    size: 56,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 4, bottom: 4), // Top and bottom padding
                child: SizedBox(
                  height: 274.0,
                  child: RotatedBox(
                    quarterTurns: 3,
                    child: SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: AGLDemoColors.periwinkleColor,
                        inactiveTrackColor: const Color(0xFF0D113F),
                        trackShape: const GradinetRectangularSliderTrackShape(),
                        //trackShape: CustomTrackShape(),
                        trackHeight: 56.0,
                        //thumbColor: Colors.blueAccent,
                        thumbShape: const RectSliderThumbShape(
                            enabledThumbRadius: 0, disabledThumbRadius: 0),
                        //overlayColor: Colors.red.withAlpha(32),
                        overlayShape:
                            //RoundSliderOverlayShape(overlayRadius: 33.0),
                            //RoundSliderOverlayShape(overlayRadius: 0.0),
                            SliderComponentShape.noOverlay,
                      ),
                      child: Slider(
                        min: 0,
                        max: 100,
                        value: volumeValue.toDouble(),
                        divisions: 10,
                        onChanged: (newValue) {
                          setVolume(newValue);
                        },
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 56.0,
                width: 56.0,
                child: IconButton(
                  padding: EdgeInsets.zero,
                  color: AGLDemoColors.periwinkleColor,
                  onPressed: () {
                    decreaseVolume();
                  },
                  icon: const Icon(
                    CustomIcons.vol_min,
                    size: 56,
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
          //padding: const EdgeInsets.all(16),
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
          child: IconButton(
              padding: EdgeInsets.zero,
              color: AGLDemoColors.periwinkleColor,
              onPressed: () {
                if (isPlaying) {
                  pause();
                } else {
                  play();
                }
              },
              icon: isPlaying
                  ? const Icon(Icons.pause, size: 40)
                  : const Icon(Icons.play_arrow, size: 40)),
        ),
      ],
    );
  }
}

class RectSliderThumbShape extends SliderComponentShape {
  /// Create a slider thumb that draws a Rect.
  const RectSliderThumbShape({
    this.enabledThumbRadius = 10.0,
    this.disabledThumbRadius,
    this.elevation = 1.0,
    this.pressedElevation = 6.0,
  });

  final double enabledThumbRadius;

  final double? disabledThumbRadius;
  double get _disabledThumbRadius => disabledThumbRadius ?? enabledThumbRadius;

  final double elevation;

  final double pressedElevation;

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(
        isEnabled == true ? enabledThumbRadius : _disabledThumbRadius);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    final Canvas canvas = context.canvas;

    const Color color = Colors.white;
    //const double radius = 0;

    final Tween<double> elevationTween = Tween<double>(
      begin: elevation,
      end: pressedElevation,
    );

    final double evaluatedElevation =
        elevationTween.evaluate(activationAnimation);

    final Path path = Path()
      ..addRect(
        Rect.fromCenter(
            center: Offset(center.dx - 3, center.dy + 2), width: 3, height: 54),
      );

    // canvas.drawRect(
    //   Rect.fromCenter(center: center, width: 4, height: 25),
    //   Paint()..color = color,
    // );
    canvas.drawRect(
      Rect.fromCenter(center: center, width: 4, height: 54),
      Paint()..color = color,
    );
    canvas.drawShadow(path, Colors.black, evaluatedElevation, true);
  }
}

class GradinetRectangularSliderTrackShape extends SliderTrackShape
    with BaseSliderTrackShape {
  /// Creates a slider track that draws 2 rectangles.
  const GradinetRectangularSliderTrackShape();

  @override
  void paint(
    PaintingContext context,
    Offset offset, {
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required Animation<double> enableAnimation,
    required TextDirection textDirection,
    required Offset thumbCenter,
    Offset? secondaryOffset,
    bool isDiscrete = false,
    bool isEnabled = false,
  }) {
    assert(sliderTheme.disabledActiveTrackColor != null);
    assert(sliderTheme.disabledInactiveTrackColor != null);
    assert(sliderTheme.activeTrackColor != null);
    assert(sliderTheme.inactiveTrackColor != null);
    assert(sliderTheme.thumbShape != null);
    // If the slider [SliderThemeData.trackHeight] is less than or equal to 0,
    // then it makes no difference whether the track is painted or not,
    // therefore the painting can be a no-op.
    if (sliderTheme.trackHeight! <= 0) {
      return;
    }

    LinearGradient gradient = const LinearGradient(
      colors: <Color>[
        //AGLDemoColors.periwinkleColor,
        Color(0xff81A9ED),
        Colors.white,
      ],
    );
    final Rect trackRect = getPreferredRect(
      parentBox: parentBox,
      offset: offset,
      sliderTheme: sliderTheme,
      isEnabled: isEnabled,
      isDiscrete: isDiscrete,
    );
    // Assign the track segment paints, which are left: active, right: inactive,
    // but reversed for right to left text.
    final ColorTween activeTrackColorTween = ColorTween(
        begin: sliderTheme.disabledActiveTrackColor,
        end: sliderTheme.activeTrackColor);
    final ColorTween inactiveTrackColorTween = ColorTween(
        begin: sliderTheme.disabledInactiveTrackColor,
        end: sliderTheme.inactiveTrackColor);
    final Paint activePaint = Paint()
      ..shader = gradient.createShader(trackRect)
      ..color = activeTrackColorTween.evaluate(enableAnimation)!;
    final Paint inactivePaint = Paint()
      ..color = inactiveTrackColorTween.evaluate(enableAnimation)!;
    final Paint leftTrackPaint;
    final Paint rightTrackPaint;
    switch (textDirection) {
      case TextDirection.ltr:
        leftTrackPaint = activePaint;
        rightTrackPaint = inactivePaint;
      case TextDirection.rtl:
        leftTrackPaint = inactivePaint;
        rightTrackPaint = activePaint;
    }

    final Rect leftTrackSegment = Rect.fromLTRB(
        trackRect.left, trackRect.top, thumbCenter.dx, trackRect.bottom);
    if (!leftTrackSegment.isEmpty) {
      context.canvas.drawRect(leftTrackSegment, leftTrackPaint);
    }
    final Rect rightTrackSegment = Rect.fromLTRB(
        thumbCenter.dx, trackRect.top, trackRect.right, trackRect.bottom);
    if (!rightTrackSegment.isEmpty) {
      context.canvas.drawRect(rightTrackSegment, rightTrackPaint);
    }

    final bool showSecondaryTrack = (secondaryOffset != null) &&
        ((textDirection == TextDirection.ltr)
            ? (secondaryOffset.dx > thumbCenter.dx)
            : (secondaryOffset.dx < thumbCenter.dx));

    if (showSecondaryTrack) {
      final ColorTween secondaryTrackColorTween = ColorTween(
          begin: sliderTheme.disabledSecondaryActiveTrackColor,
          end: sliderTheme.secondaryActiveTrackColor);
      final Paint secondaryTrackPaint = Paint()
        ..color = secondaryTrackColorTween.evaluate(enableAnimation)!;
      final Rect secondaryTrackSegment = Rect.fromLTRB(
        (textDirection == TextDirection.ltr)
            ? thumbCenter.dx
            : secondaryOffset.dx,
        trackRect.top,
        (textDirection == TextDirection.ltr)
            ? secondaryOffset.dx
            : thumbCenter.dx,
        trackRect.bottom,
      );
      if (!secondaryTrackSegment.isEmpty) {
        context.canvas.drawRect(secondaryTrackSegment, secondaryTrackPaint);
      }
    }
  }
}
