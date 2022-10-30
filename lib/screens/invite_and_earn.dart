import 'package:flutter/material.dart';

class InviteAndEarn extends StatelessWidget {
  const InviteAndEarn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 42.5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                        color: Color(0xFFF9F9FA),
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: const CircleAvatar(
                      radius: 32.5,
                      backgroundColor: Color(0xFFFFCC00),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Invite and earn 50 USD",
                    style: TextStyle(
                        fontSize: 28,
                        color: Color(0xFF333333),
                        fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "Earn 50 USD for every 3 friends who transfer over 200 USD They'll get fee-free transfer upto 500 USD",
                    style: TextStyle(fontSize: 12.5, color: Color(0xFF333333)),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "How to qualify",
                    style: TextStyle(fontSize: 12.5, color: Color(0xFFFFCC00)),
                  )
                ],
              ),
              Container(),
              Column(
                children: [
                  customButton(title: 'Invite via email', action: () {}),
                  const SizedBox(
                    height: 15,
                  ),
                  customButton(title: 'Invite via whatsApp', action: () {}),
                  const SizedBox(
                    height: 15,
                  ),
                  customButton(title: 'Invite via Facebook', action: () {}),
                  const SizedBox(
                    height: 15,
                  ),
                  customButton(title: 'Copy my invite link', action: () {}),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container customButton({required title, required action}) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFFFFCC00)),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: TextButton(
        onPressed: action,
        child: Text(
          title,
          style: TextStyle(
              fontSize: 16,
              color: Color(0xFF333333),
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
