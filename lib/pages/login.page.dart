import 'package:flutter/material.dart';
import 'package:mindblown_sign_in_up_flutter/components/background.component.dart';

class LoginPage extends StatelessWidget {
  static const routeName = '/login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: Key('Login Page'),
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          elevation: 0,
          title: Text(
            'LOG IN',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              BackgroundImage('images/orange wavy.jpg'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 100.0,
                    ),
                    Text(
                      'Welcome back',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        icon: Icon(Icons.email),
                        labelText: 'Email Address',
                      ),
                    ),
                    TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        icon: Icon(Icons.email),
                        labelText: 'Email Address',
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
