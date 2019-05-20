import 'package:flutter/material.dart';
import 'package:fancy_on_boarding/page_model.dart';

final onBoardingList = [
  PageModel(
    color: Color(0xFF678FB4),
    heroAssetPath: 'assets/images/onBoarding_1.png',
    iconAssetPath: 'assets/images/onBoarding_1.png',
    title: Text(
      'Welcome on CIB Wallet',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontWeight: FontWeight.w800,
        color: Colors.white,
        fontSize: 34.0,
        fontFamily: 'Montserrat'
      )
    ),
    body: Text(
      'Plan your finance any time, any where',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontSize: 18.0,
        fontFamily: 'Montserrat'
      ),
    )
  ),
  PageModel(
    color: Color(0xFF65B0B4),
    heroAssetPath: 'assets/images/onBoarding_2.png',
    iconAssetPath: 'assets/images/onBoarding_2.png',
    title: Text(
      'One touch and send money',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontWeight: FontWeight.w800,
        color: Colors.white,
        fontSize: 34.0,
        fontFamily: 'Montserrat'
      )
    ),
    body: Text(
      'Send money to every one by on step and organize your wallet easier.',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontSize: 18.0,
        fontFamily: 'Montserrat'
      ),
    )
  ),
  PageModel(
    color: Color(0xFF9B90BC),
    heroAssetPath: 'assets/images/onBoarding_3.png',
    iconAssetPath: 'assets/images/onBoarding_3.png',
    title: Text(
      'Automatically organize',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontWeight: FontWeight.w800,
        color: Colors.white,
        fontSize: 34.0,
        fontFamily: 'Montserrat'
      )
    ),
    body: Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        'Organize your your expenses and secure your account by pin code every time you use the app.',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
          fontFamily: 'Montserrat'
        ),
      ),
    )
  )
];