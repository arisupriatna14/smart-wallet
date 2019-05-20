import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            constraints: BoxConstraints.expand(
              height: 200.0
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/card.png'),
                fit: BoxFit.cover
              )
            ),
            alignment: Alignment.topLeft,
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Hello world',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600
              ),
            )
          )
        ],
      )
    );
  }
}