import 'package:flutter/material.dart';

import '../constants/theme.dart';

class CustomSmallButton extends StatelessWidget {
  const CustomSmallButton({
    required this.action,
    required this.title,
    required this.borderColor,
    required this.buttonColor,
    required this.titleColor,
    Key? key,
  }) : super(key: key);

  final String title;
  final Color titleColor;
  final Color buttonColor;
  final Color borderColor;
  final Function() action;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 125,
      decoration: BoxDecoration(
          border: Border.all(color: borderColor),
          color: buttonColor,
          borderRadius: const BorderRadius.all(Radius.circular(17.5))),
      child: TextButton(
        onPressed: action,
        child: Text(
          title,
          style: TextStyle(
              color: titleColor,
              fontSize: 16.5,
              fontFamily: fontFamilySecondary),
        ),
      ),
    );
  }
}
