import 'package:flutter/material.dart';
import 'package:rodiio_app/constants/theme.dart';
import 'package:rodiio_app/screens/intro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rodiio',
      theme: ThemeData(
          primarySwatch: primarySwatch,
          primaryColor: primaryColor,
          fontFamily: fontFamily),
      home: const Intro(),
    );
  }
}
