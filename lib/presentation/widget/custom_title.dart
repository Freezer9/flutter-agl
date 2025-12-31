import 'package:flutter_ics_homescreen/export.dart';

class CommonTitle extends StatelessWidget {
  const CommonTitle(
      {super.key,
      required this.title,
      this.hasBackButton = false,
      this.onPressed});

  final String title;
  final bool? hasBackButton;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 80),
          child: SizedBox(
            //color: Colors.amber,
            height: 120,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.center,
                          colors: [
                        AGLDemoColors.jordyBlueColor.withOpacity(0.2),
                        AGLDemoColors.jordyBlueColor.withOpacity(0)
                      ],
                          stops: const [
                        0.0,
                        1
                      ])),
                  alignment: Alignment.center,
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                if (hasBackButton!)
                  Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: InkWell(
                          customBorder: const CircleBorder(),
                          onTap: onPressed,
                          child: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 48,
                          )),
                    ),
                  ),
              ],
            ),
          ),
        ),
        Container(
            height: 2,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.white10,
                  AGLDemoColors.jordyBlueColor,
                  Colors.white10
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  blurRadius: 6,
                  spreadRadius: 3,
                  offset: const Offset(0, 6),
                ),
              ],
            )),
        Container(
          height: 48,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.black, Colors.black.withOpacity(0.0)],
            ),
          ),
        )
      ],
    );
  }
}
