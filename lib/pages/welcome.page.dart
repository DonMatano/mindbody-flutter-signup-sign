import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mindblown_sign_in_up_flutter/components/background.component.dart';

import 'login.page.dart';

class WelcomePage extends StatelessWidget {
  static const routeName = '/';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: Key('Welcome Page'),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            BackgroundImage('images/yoga.jpg'),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 50.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      key: Key('mindBodyTitle'),
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          'MIND',
                          style: TextStyle(color: Colors.white, fontSize: 30.0),
                        ),
                        Text(
                          'BODY',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '\u00a9',
                          style: TextStyle(color: Colors.white, fontSize: 10.0),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 70),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Welcome to MINDBODY!',
                          style: TextStyle(fontSize: 23.0),
                        ),
                        Text(
                          'Sign up and start exploring.',
                          style: TextStyle(fontSize: 14.0),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: FlatButton(
                      key: Key('Sign up button'),
                      child: Text(
                        'SIGN UP',
                        style: TextStyle(
                            fontSize: 12, letterSpacing: 1, wordSpacing: 2),
                      ),
                      color: Colors.white,
                      padding: EdgeInsets.all(12.0),
                      textColor: Colors.orange.shade900,
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: OutlineButton(
                      key: Key('Login button'),
                      child: Text('I ALREADY HAVE AN ACCOUNT, LOGIN',
                          style: TextStyle(
                              fontSize: 12, letterSpacing: 1, wordSpacing: 2)),
                      textColor: Colors.white,
                      padding: EdgeInsets.all(12.0),
                      borderSide: BorderSide(color: Colors.white),
                      onPressed: () {
                        Navigator.pushNamed(context, LoginPage.routeName);
                      },
                    ),
                  ),
                  FlatButton(
                    key: Key('Continue as guest button'),
                    child: Text(
                      'Continue as a guest',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline),
                    ),
                    textColor: Colors.white,
                    onPressed: () {},
                  ),
                  FlatButton(
                    key: Key('Terms and privacy button'),
                    child: Text(
                      'Terms and privacy policy',
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline),
                    ),
                    textColor: Colors.white,
                    onPressed: () {},
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
