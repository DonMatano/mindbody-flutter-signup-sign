import 'package:flutter/material.dart';
import 'package:mindblown_sign_in_up_flutter/components/background.component.dart';
import 'package:mindblown_sign_in_up_flutter/presentation/customIcons.dart';

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
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 50.0,
                      ),
                      Text(
                        'Welcome back',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      TextFormField(
                        style: TextStyle(color: Colors.white),
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.white,
                            size: 18,
                          ),
                          labelText: 'Email Address',
                        ),
                      ),
                      TextFormField(
                        style: TextStyle(color: Colors.white),
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.security,
                            color: Colors.white,
                            size: 18,
                          ),
                          labelText: 'Password',
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: FlatButton(
                          child: Text(
                            'Forgot Password ?',
                            style:
                                TextStyle(decoration: TextDecoration.underline),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: OutlineButton(
                          key: Key('Login button'),
                          child: Text('LOG IN',
                              style: TextStyle(
                                  fontSize: 12,
                                  letterSpacing: 1,
                                  wordSpacing: 2)),
                          textColor: Colors.white,
                          padding: EdgeInsets.all(12.0),
                          borderSide: BorderSide(color: Colors.white),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 16),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Divider(
                                color: Colors.white,
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                child: Text('or')),
                            Expanded(
                              child: Divider(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      iconButtonWidget(CustomIcons.facebook_squared, 'LOGIN WITH FACEBOOK'),
                      iconButtonWidget(CustomIcons.google, 'LOGIN WITH GOOGLE'),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }

  Widget iconButtonWidget(IconData icon, String text) {
    return SizedBox(
      width: double.infinity,
      child: FlatButton.icon(
        icon: Icon(icon, size: 15,),
        color: Colors.white.withOpacity(0.2),
        label: Text(
          text,
          style: TextStyle(
            fontSize: 12,
            letterSpacing: 1.5,
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
