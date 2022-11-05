import 'package:flutter/material.dart';
import 'package:rodiio_app/constants/theme.dart';

class Passcode extends StatefulWidget {
  const Passcode({super.key});

  @override
  State<Passcode> createState() => _PasscodeState();
}

class _PasscodeState extends State<Passcode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(),
            Container(),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                color: Color(0xFFFFCC00),
                shape: BoxShape.circle,
              ),
              child: const CircleAvatar(
                backgroundColor: Colors.white,
                radius: 45,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Column(
                children: [
                  const Text(
                    'Enter passcode',
                    style: TextStyle(color: Color(0xFF333333), fontSize: 19),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      PasscodeRing(),
                      PasscodeRing(),
                      PasscodeRing(),
                      PasscodeRing(),
                      PasscodeRing(),
                      PasscodeRing(),
                    ],
                  )
                ],
              ),
            ),
            Container(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  passCodeDialElementRow('1', '2', '3'),
                  passCodeDialElementRow('4', '5', '6'),
                  passCodeDialElementRow('7', '8', '9'),
                  passCodeDialElementRow('Sign Out', '0', 'Delete'),
                ],
              ),
            ),
            const ImageIcon(
              AssetImage('images/RODIIO APP logo.png'),
              color: Color(0xFF4D4D4D),
              size: 125,
            )
          ],
        ),
      ),
    );
  }

  Row passCodeDialElementRow(e1, e2, e3) {
    return Row(
      children: [
        passCodeDialElement(e1),
        passCodeDialElement(e2),
        passCodeDialElement(e3),
      ],
    );
  }

  Expanded passCodeDialElement(text) {
    return Expanded(
      child: TextButton(
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              text,
              style: TextStyle(
                  color: Color(0xFF333333),
                  fontSize: (text.length > 1) ? 17 : 22),
            ),
          )),
    );
  }
}

class PasscodeRing extends StatelessWidget {
  const PasscodeRing({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.5),
      child: Container(
        height: 15,
        width: 15,
        decoration: BoxDecoration(
            // color: Color(0xFF999999),
            shape: BoxShape.circle,
            border: Border.all(width: 1.75, color: Color(0xFF999999))),
      ),
    );
  }
}
