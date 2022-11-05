import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    Key? key,
    required this.title,
    required this.action,
    required this.buttonColor,
    required this.titleColor,
  }) : super(key: key);

  final title;
  final action;
  final buttonColor;
  final titleColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: const BorderRadius.all(Radius.circular(15))),
      child: TextButton(
        onPressed: action,
        child: Text(
          title,
          style: TextStyle(
              color: titleColor, fontFamily: 'Roboto-Regular', fontSize: 16),
        ),
      ),
    );
  }
}
