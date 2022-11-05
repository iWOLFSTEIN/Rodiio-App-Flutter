import 'package:flutter/material.dart';
import 'package:rodiio_app/widgets/custom_text_button.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(),
              CustomTextButton(
                  title: 'Edit Profile',
                  action: () {},
                  buttonColor: const Color(0xFFFFCC00),
                  titleColor: const Color(0xFF1A1A1A)),
              Container(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textElement('Transfer limits', () {}),
                    textElement('Dark mode settings', () {}),
                    textElement('Help & Support', () {}),
                    textElement('Invite your friends', () {}),
                    textElement('Payment methods', () {}),
                    textElement('Download account statement', () {}),
                    textElement('Terms and Conditions', () {}),
                    textElement('Privacy Policy', () {}),
                    textElement('Swap History', () {}),
                    textElement('Sign out', () {}),
                  ],
                ),
              ),
              Container(),
            ],
          ),
        ),
      ),
    );
  }

  Padding textElement(text, action) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.5),
      child: GestureDetector(
        onTap: action,
        child: Text(
          text,
          style: const TextStyle(color: Color(0xFF999999)),
        ),
      ),
    );
  }
}
