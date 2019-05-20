import 'package:flutter/material.dart';
import 'package:fancy_on_boarding/fancy_on_boarding.dart';
import 'models/ListOnBoarding.model.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FancyOnBoarding(
        pageList: onBoardingList,
        mainPageRoute: '/mainPage',
      ),
    );
  }
}