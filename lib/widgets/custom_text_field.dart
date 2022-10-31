import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    Key? key,
    required this.controller,
    required this.textColor,
    required this.borderColor,
    required this.hintText,
    this.suffixIcon,
  }) : super(key: key);

  final TextEditingController controller;
  final Color textColor;
  final Color borderColor;
  final String hintText;
  final Widget? suffixIcon;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool showObsecureText = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: TextField(
        controller: widget.controller,
        style: TextStyle(color: widget.textColor),
        obscureText: (widget.suffixIcon == null) ? false : showObsecureText,
        decoration: InputDecoration(
            suffixIcon: (widget.suffixIcon == null)
                ? null
                : GestureDetector(
                    onTap: () {
                      setState(() {
                        showObsecureText = !showObsecureText;
                      });
                    },
                    child: widget.suffixIcon),
            border: border(),
            focusedBorder: border(),
            isCollapsed: true,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            hintText: widget.hintText,
            hintStyle: const TextStyle(
              color: Color(0xFF999999),
            )),
      ),
    );
  }

  OutlineInputBorder border() {
    return OutlineInputBorder(
        borderSide: BorderSide(
          color: widget.borderColor,
          width: 1,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(15)));
  }
}
