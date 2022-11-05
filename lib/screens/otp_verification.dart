import 'package:flutter/material.dart';
import 'package:rodiio_app/widgets/custom_small_button.dart';

import '../widgets/custom_text_field.dart';
import 'email_verification_link.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({super.key});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  final _otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 200,
                  child: Text(
                    'Please enter 6 digit code we sent to abc@gmail.com',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF999999),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomTextField(
                  controller: _otpController,
                  textColor: const Color(0xFF1A1A1A),
                  borderColor: const Color(0xFF999999),
                  hintText: '',
                ),
                const SizedBox(
                  height: 20,
                ),
                customTextField(
                    hintText: 'Tap to verify using USSD',
                    action: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const EmailVerificationLink(),
                          ));
                    }),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'This is free and will verify instantly',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF999999),
                  ),
                ),
                const SizedBox(
                  height: 45,
                ),
                CustomSmallButton(
                  action: () {},
                  title: 'Go Back',
                  titleColor: const Color(0xFF1A1A1A),
                  buttonColor: const Color(0xFFFFCC00),
                  borderColor: const Color(0xFFFFCC00),
                ),
              ],
            ),
            Container(),
            Container(),
            Container(),
            Container(
              height: 40,
            )
          ],
        ),
      ),
    );
  }

  Padding customTextField({required hintText, required action}) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: TextField(
        onTap: action,
        readOnly: true,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
            border: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFF999999),
                  width: 1,
                ),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFF999999),
                  width: 1,
                ),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            isCollapsed: true,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            hintText: hintText,
            hintStyle: const TextStyle(
              color: Color(0xFF999999),
            )),
      ),
    );
  }
}
