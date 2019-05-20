import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';
import 'package:local_auth/auth_strings.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final LocalAuthentication _localAuthentication = LocalAuthentication();
  String _isAuthorized = 'No Authorized';

  Future<void> _authorizedNow() async {
    bool isAuthorized = false;
    try {
      isAuthorized = await _localAuthentication.authenticateWithBiometrics(
        stickyAuth: true,
        useErrorDialogs: true,
        localizedReason: 'Scan your finger for login',
        androidAuthStrings: AndroidAuthMessages(
          signInTitle: 'Sign In'
        )
      );
    } on PlatformException catch (e) {
      print(e);
    }

    if (!mounted) return;
    
    setState(() {
      if (isAuthorized) {
        Navigator.pushNamedAndRemoveUntil(context, '/home', (Route<dynamic> route) => false);
      } else {
        _isAuthorized = 'Not Authorized';
      }
    });
  }

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
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50.0)
                    )
                  ),
                  elevation: 10.0,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.symmetric(vertical: 16.0)),
                      Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.symmetric(vertical: 8.0)),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(50.0)
                              ),
                              borderSide: BorderSide(
                                color: Colors.white,
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
                      ),
                      Container(
                        padding: EdgeInsets.all(20.0),
                        child: TextField(
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
                      ),
                      Padding(padding: EdgeInsets.symmetric(vertical: 8.0)),
                      Container(
                        width: 150.0,
                        height: 43.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            stops: [0.1, 0.9],
                            colors: [
                              Color(0xff1d83ab),
                              Color(0xff0cbab8),
                            ],
                          ),
                        ),
                        child: FlatButton(
                          child: Text(
                            'Sign In',
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
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Or',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 20.0
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.fingerprint),
                              onPressed: _authorizedNow,
                              iconSize: 50.0,
                            ),
                            Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('Don\'t have an account?'),
                                  FlatButton(
                                    child: Text('Register Now'),
                                    onPressed: () {
                                      // Navigator.popAndPushNamed(context, '/mainPage');
                                      Navigator.pushNamedAndRemoveUntil(context, '/mainPage', (Route<dynamic> route) => false);
                                    },
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      )
                    ],
                  ),
                )
              )
            ],
          ),
        ],
      )
    );
  }
}