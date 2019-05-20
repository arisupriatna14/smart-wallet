import 'package:flutter/material.dart';
import 'package:smart_wallet/Home_page.dart';
import 'package:smart_wallet/OnBoarding_page.dart';
import 'pages/Register.screen.dart';
import 'pages/Login.screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Wallet',
      theme: ThemeData(
        primaryColor: Colors.black,
        bottomAppBarColor: Colors.white,
        bottomAppBarTheme: BottomAppBarTheme(color: Colors.white),
        brightness: Brightness.dark,
        hintColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: OnBoardingScreen(),
      routes: {
        '/mainPage': (context) => RegisterScreen(),
        '/login': (context) => LoginScreen(),
        '/home': (context) => HomePage()
      },
    );
  }
}
