import 'package:flutter/material.dart';
import 'screens/homeScreen.dart';
import 'const.dart';
void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: kbackgrond,
        scaffoldBackgroundColor: kbackgrond,
      ),
      debugShowCheckedModeBanner: false,
      home: homeScreen(),
    );
  }
}

