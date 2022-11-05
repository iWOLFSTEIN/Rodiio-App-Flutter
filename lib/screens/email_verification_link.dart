import 'package:flutter/material.dart';
import 'package:rodiio_app/screens/passcode.dart';

import '../widgets/custom_text_button.dart';

class EmailVerificationLink extends StatefulWidget {
  const EmailVerificationLink({super.key});

  @override
  State<EmailVerificationLink> createState() => _EmailVerificationLinkState();
}

class _EmailVerificationLinkState extends State<EmailVerificationLink> {
  var email = 'abc@gmail.com';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 27.5),
              child: Text(
                'Verify your email',
                style: TextStyle(color: Color(0xFFFFCC00)),
              ),
            ),
            Container(),
            Container(),
            Container(),
            Container(),
            Container(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "You've got mail!",
                  style: TextStyle(color: Color(0xFFFFCC00), fontSize: 22),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'A link has been sent to',
                      style: TextStyle(color: Color(0xFF333333)),
                    ),
                    Text(
                      email,
                      style: const TextStyle(color: Color(0xFF333333)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
                CustomTextButton(
                    title: 'Validate My Email',
                    action: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Passcode(),
                          ));
                    },
                    buttonColor: const Color(0xFFFFCC00),
                    titleColor: const Color(0xFF1A1A1A)),
                const SizedBox(
                  height: 12.5,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        'By signing up you are agreeing to our',
                        style:
                            TextStyle(color: Color(0xFF999999), fontSize: 11),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Text(
                        'Terms of Service and Privacy Policy',
                        style: TextStyle(
                            color: Color(0xFF1A1A1A),
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
