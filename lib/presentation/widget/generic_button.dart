import 'package:flutter_ics_homescreen/export.dart';

class GenericButton extends StatefulWidget {
  final double height;
  final double width;
  final String text;
  final Function onTap;

  const GenericButton({
    super.key,
    required this.height,
    required this.width,
    required this.text,
    required this.onTap,
  });

  @override
  State<GenericButton> createState() => _GenericButtonState();
}

class _GenericButtonState extends State<GenericButton> {
  LinearGradient gradientEnable1 = const LinearGradient(colors: <Color>[
    Color(0xFF2962FF),
    Color(0x802962FF),
  ]);
  LinearGradient gradientEnable2 = const LinearGradient(colors: <Color>[
    Color(0xFF1A237E),
    Color(0xFF141F64),
  ]);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        setState(() {
          gradientEnable1 = const LinearGradient(colors: <Color>[
            Color(0x802962FF),
            Color(0xFF2962FF),
          ]);
          gradientEnable2 = const LinearGradient(colors: <Color>[
            Color(0xFF1A237E),
            Color(0xFF1C2D92),
          ]);
        });
        //change style
      },
      onTapUp: (details) {
        setState(() {
          gradientEnable1 = const LinearGradient(colors: <Color>[
            Color(0xFF2962FF),
            Color(0x802962FF),
          ]);
          gradientEnable2 = const LinearGradient(colors: <Color>[
            Color(0xFF1A237E),
            Color(0xFF141F64),
          ]);
        });
        widget.onTap();
      },
      child: Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          gradient: Gradient.lerp(gradientEnable1, gradientEnable2, 0.5),
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              blurRadius: 2,
              offset: Offset(0, 2), // Shadow position
            ),
          ],
          border: Border.all(
            color: const Color(0xFF285DF4),
            width: 1,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(4),
          ),
        ),
        child: Center(
          child: Text(
            widget.text,
            style: const TextStyle(
              color: Color(0xFFC1D8FF),
              fontSize: 44,
            ),
          ),
        ),
      ),
    );
  }
}
