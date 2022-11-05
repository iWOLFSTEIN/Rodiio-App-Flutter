import 'package:flutter/material.dart';
import 'package:rodiio_app/constants/theme.dart';
import 'package:rodiio_app/screens/create_account.dart';
import 'package:rodiio_app/screens/intro.dart';
import 'package:rodiio_app/screens/invite_and_earn.dart';
import 'package:rodiio_app/screens/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rodiio',
      theme: ThemeData(
          primarySwatch: primarySwatch,
          primaryColor: primaryColor,
          fontFamily: fontFamilyPrimary),
      home: const Settings(),
    );
  }
}
