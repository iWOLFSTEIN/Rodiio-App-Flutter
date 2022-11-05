import 'package:flutter/material.dart';

import '../widgets/custom_small_button.dart';
import '../widgets/custom_text_field.dart';
import 'otp_verification.dart';

class EmailVerification extends StatefulWidget {
  const EmailVerification({super.key});

  @override
  State<EmailVerification> createState() => _EmailVerificationState();
}

class _EmailVerificationState extends State<EmailVerification> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
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
                  'Enter your mobile number or email to continue.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF999999),
                  ),
                ),
              ),
              const SizedBox(
                height: 11,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Email?',
                    style: TextStyle(
                      color: Color(0xFF999999),
                    ),
                  ),
                ),
              ),
              CustomTextField(
                controller: _emailController,
                textColor: const Color(0xFF1A1A1A),
                borderColor: const Color(0xFF999999),
                hintText: 'Whats your email?',
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                controller: _passwordController,
                textColor: const Color(0xFF1A1A1A),
                borderColor: const Color(0xFF999999),
                hintText: 'Password',
                suffixIcon: const Icon(Icons.remove_red_eye_outlined,
                    size: 21, color: Color(0xFF999999)),
              ),
              const SizedBox(
                height: 25,
              ),
              const Opacity(
                opacity: 0.0,
                child: Text(
                  'Forgot your passowrd',
                  style: TextStyle(color: Color(0xFFFFCC00), fontSize: 18.5),
                ),
              )
            ],
          ),
          Container(),
          Container(),
          Container(),
          Column(
            children: [
              Text(
                '',
                style: TextStyle(
                    fontSize: 17.5,
                    color: const Color(0xFF1A1A1A).withOpacity(0.75)),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomSmallButton(
                    title: 'Use Email',
                    titleColor: Colors.white,
                    buttonColor: const Color(0xFF1A1A1A),
                    borderColor: const Color(0xFF1A1A1A),
                    action: () {},
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  CustomSmallButton(
                    title: 'Next',
                    titleColor: const Color(0xFF1A1A1A),
                    buttonColor: const Color(0xFFFFCC00),
                    borderColor: const Color(0xFFFFCC00),
                    action: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const OtpVerification(),
                          ));
                    },
                  ),
                ],
              )
            ],
          )
        ],
      )),
    );
  }
}
