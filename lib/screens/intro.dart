import 'package:flutter/material.dart';

class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  final PageController _pageController = PageController();
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      Container(
        // color: Colors.orange,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
              child: Row(
                children: [
                  const Text(
                    'English',
                    style: TextStyle(
                      color: Color(0xFF1A1A1A),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(child: Container()),
                  const Text(
                    'Skip',
                    style: TextStyle(
                      color: Color(0xFF1A1A1A),
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Container(),
            Image.asset(
              'images/RODIIO APP element2.png',
              height: 170,
            ),
            Container(),
            Column(
              children: const [
                Text(
                  'Welcome to Rodiio Wallet',
                  style: TextStyle(
                      color: Color(0xFF1A1A1A),
                      fontFamily: 'Roboto-Regular',
                      fontWeight: FontWeight.bold,
                      fontSize: 16.5),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 65),
                  child: Text(
                    'Start investing and earning fixed returns with us little as 1\$ or sell stocks like Google, Apple, Amazon, Facebook and Microsoft with as little as 10\$',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xFF1A1A1A),
                        // fontFamily: 'Roboto-Regular',
                        // fontWeight: FontWeight.bold,
                        fontSize: 13.5),
                  ),
                )
              ],
            ),
            const SizedBox(),
          ],
        ),
      ),
      Container(
        color: Colors.green,
      ),
      Container(
        color: Colors.blue,
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                scrollDirection: Axis.horizontal,
                children: pages,
                onPageChanged: (pageIndex) {
                  setState(() {
                    _currentIndex = pageIndex;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  dotIndicator(pages, context),
                  const SizedBox(
                    height: 17.5,
                  ),
                  customButton(
                    title: 'Start Building wealth',
                    action: () {},
                    buttonColor: const Color(0xFF1A1A1A),
                    titleColor: Colors.white,
                  ),
                  const SizedBox(
                    height: 17.5,
                  ),
                  customButton(
                    title: 'Have an account? Log In',
                    action: () {},
                    buttonColor: const Color(0xFFFFCC00),
                    titleColor: const Color(0xFF1A1A1A),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Row dotIndicator(List<Widget> pages, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: pages.asMap().entries.map((entry) {
        return GestureDetector(
            onTap: () => _pageController.animateToPage(entry.key,
                curve: Curves.ease,
                duration: const Duration(milliseconds: 1000)),
            child: AnimatedContainer(
              curve: Curves.ease,
              duration: const Duration(milliseconds: 1000),
              width: 8.0,
              height: 8.0,
              margin:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 7.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: (Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : _currentIndex == entry.key
                        ? const Color(0xFFFFCC00)
                        : const Color(0xFF1A1A1A)),
              ),
            ));
      }).toList(),
    );
  }

  Container customButton(
      {required title,
      required action,
      required buttonColor,
      required titleColor}) {
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