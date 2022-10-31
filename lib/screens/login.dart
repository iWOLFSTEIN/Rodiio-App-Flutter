import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:rodiio_app/screens/create_account.dart';

import '../widgets/custom_small_button.dart';
import '../widgets/custom_text_field.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();

  String? countryFlag;
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
                  height: 30,
                ),
                customTextField(context),
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
                GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Forgot your passowrd',
                      style:
                          TextStyle(color: Color(0xFFFFCC00), fontSize: 18.5),
                    ))
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

  Padding customTextField(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              showCountryPicker(
                context: context,
                showPhoneCode:
                    true, // optional. Shows phone code before the country name.
                onSelect: (Country country) {
                  setState(() {
                    countryFlag = country.flagEmoji;
                    _phoneController.text = country.phoneCode;
                  });
                },
              );
            },
            child: Transform.translate(
              offset: const Offset(1, 0),
              child: Container(
                  width: 60,
                  height: 50,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          Border.all(color: const Color(0xFF999999), width: 1),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      )),
                  child: Center(
                      child: (countryFlag == null)
                          ? Image.asset('images/flag.png')
                          : Text(
                              '$countryFlag',
                              style: const TextStyle(fontSize: 28),
                            ))),
            ),
          ),
          Expanded(
            child: TextField(
              controller: _phoneController,
              style: const TextStyle(color: Color(0xFF1A1A1A)),
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF999999),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(15),
                          topRight: Radius.circular(15))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF999999),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  isCollapsed: true,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  hintText: '+234 xxxxxxxxxx',
                  hintStyle: TextStyle(
                    color: Color(0xFF999999),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
