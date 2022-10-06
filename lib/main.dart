import 'package:app1/Screens/Welcome/welcome_screen.dart';
import 'package:app1/constanst.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'TKM AKADEMİ',
        theme: ThemeData(
            primaryColor: kPrimayColor,
            scaffoldBackgroundColor: kPrimaylightColor),
        home: WelcomeScreen());
  }
}
