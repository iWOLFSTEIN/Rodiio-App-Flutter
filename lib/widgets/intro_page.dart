import 'package:flutter/material.dart';
import 'package:rodiio_app/constants/theme.dart';

class IntroPage extends StatelessWidget {
  const IntroPage(
      {Key? key,
      required this.imageAdress,
      required this.subTitle,
      required this.title,
      required this.visibility,
      required this.enlarge,
      required this.skipAction})
      : super(key: key);

  final double visibility;
  final String imageAdress;
  final String title;
  final String subTitle;
  final Function() skipAction;
  final bool enlarge;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Opacity(
          opacity: visibility,
          child: Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
            child: Row(
              children: [
                const Text(
                  'English',
                  style: TextStyle(
                    color: Color(0xFF1A1A1A),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(child: Container()),
                GestureDetector(
                  onTap: skipAction,
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                      color: Color(0xFF1A1A1A),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Container(),
        Image.asset(
          imageAdress,
          height: 170,
        ),
        Container(),
        Column(
          children: [
            Text(
              title,
              style: TextStyle(
                  color: const Color(0xFF1A1A1A),
                  fontFamily: fontFamilySecondary,
                  fontWeight: FontWeight.bold,
                  fontSize: (enlarge) ? 18.5 : 16.5),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 65),
              child: Text(
                subTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: const Color(0xFF999999),
                    fontSize: (enlarge) ? 15.5 : 13.5),
              ),
            )
          ],
        ),
        const SizedBox(),
      ],
    );
  }
}
