import 'package:flutter/material.dart';
import 'package:rodiio_app/constants/theme.dart';
import 'package:rodiio_app/screens/login.dart';

import '../widgets/custom_small_button.dart';
import '../widgets/custom_text_field.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                title(signInAction: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Login()));
                }),
                const SizedBox(
                  height: 30,
                ),
                CustomTextField(
                    controller: _emailController,
                    textColor: const Color(0xFF1A1A1A),
                    borderColor: const Color(0xFF999999),
                    hintText: 'Email?'),
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
                  height: 35,
                ),
                const Text(
                  'Use atleast 8 characters 1 number & 1 uppercase letter',
                  style: TextStyle(color: Color(0xFFFFCC00), fontSize: 12),
                )
              ],
            ),
            Container(),
            Container(),
            Container(),
            Column(
              children: [
                Text(
                  'or use your social account',
                  style: TextStyle(
                      fontSize: 17.5,
                      color: const Color(0xFF1A1A1A).withOpacity(0.75)),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomSmallButton(
                      title: 'Google',
                      titleColor: const Color(0xFFFFCC00),
                      buttonColor: const Color(0xFF1A1A1A),
                      borderColor: const Color(0xFF1A1A1A),
                      action: () {},
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    CustomSmallButton(
                      title: 'Facebook',
                      titleColor: const Color(0xFF1A1A1A),
                      buttonColor: const Color(0xFFFFCC00),
                      borderColor: const Color(0xFFFFCC00),
                      action: () {},
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Column title({required signInAction}) {
    return Column(
      children: [
        const Text(
          'Create account',
          style: TextStyle(
            fontSize: 18,
            color: Color(0xFF999999),
          ),
        ),
        const SizedBox(
          height: 13,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Already joined? ',
              style: TextStyle(
                fontSize: 15.5,
                color: Color(0xFF999999),
              ),
            ),
            GestureDetector(
              onTap: signInAction,
              child: const Text(
                'Sign In',
                style: TextStyle(
                  fontSize: 15.5,
                  color: Color(0xFFFFCC00),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
