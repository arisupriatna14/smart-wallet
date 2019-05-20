import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            verticalDirection: VerticalDirection.down,
            children: <Widget>[
              SafeArea(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(top: 36.0)),
                      Image.asset('assets/images/wallet_card.png'),
                      Padding(padding: EdgeInsets.symmetric(vertical: 16)),
                      Text(
                        'Register',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat'
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.0)
                          ),
                          borderSide: BorderSide(
                            color: Colors.white,
                            // style: BorderStyle.solid 
                          )
                        ),
                        hintText: 'Username',
                        hintStyle: TextStyle(
                          fontFamily: 'Montserrat'
                        ),
                        filled: true,
                        contentPadding: EdgeInsets.all(16.0),
                        prefixIcon: Icon(Icons.person_outline),
                      ),
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 8.0)),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'E-mail',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.0)
                          )
                        ),
                        filled: true,
                        hintStyle: TextStyle(
                          fontFamily: 'Montserrat'
                        ),
                        contentPadding: EdgeInsets.all(16.0),
                        prefixIcon: Icon(Icons.mail_outline)
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 8.0)),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Phone Number',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.0)
                          )
                        ),
                        filled: true,
                        hintStyle: TextStyle(
                          fontFamily: 'Montserrat'
                        ),
                        contentPadding: EdgeInsets.all(16.0),
                        prefixIcon: Icon(Icons.phone)
                      ),
                      keyboardType: TextInputType.text,
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 8.0)),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.0)
                          )
                        ),
                        hintStyle: TextStyle(
                          fontFamily: 'Montserrat'
                        ),
                        filled: true,
                        contentPadding: EdgeInsets.all(16.0),
                        prefixIcon: Icon(Icons.lock_outline)
                      ),
                      keyboardType: TextInputType.text,
                      obscureText: true,
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 8.0)),
                    Container(
                      width: 150.0,
                      height: 43.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        gradient: LinearGradient(
                          // Where the linear gradient begins and ends
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          // Add one stop for each color. Stops should increase from 0 to 1
                          stops: [0.1, 0.9],
                          colors: [
                            // Colors are easy thanks to Flutter's Colors class.
                            Color(0xff1d83ab),
                            Color(0xff0cbab8),
                          ],
                        ),
                      ),
                      child: FlatButton(
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        textColor: Colors.white,
                        color: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/home');
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Already have account?'),
                            FlatButton(
                              child: Text('Login Now'),
                              onPressed: () {
                                Navigator.pushNamed(context, '/login');
                              },
                            )
                          ],
                        ),
                      )
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      )
    );
  }
}