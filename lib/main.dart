import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mindblown_sign_in_up_flutter/pages/login.page.dart';
import 'package:mindblown_sign_in_up_flutter/pages/welcome.page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.deepOrangeAccent));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomePage.routeName,
      routes: {
        WelcomePage.routeName: (context) => WelcomePage(),
        LoginPage.routeName: (context) => LoginPage(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Lato',
        primarySwatch: Colors.deepOrange,
        buttonTheme: ButtonThemeData(
          textTheme: ButtonTextTheme.accent
        ),
        textTheme: TextTheme(
          headline: TextStyle(
            color: Colors.white,
          ),
          body1: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        hintColor: Colors.white,
        accentColor: Colors.white,
        inputDecorationTheme: InputDecorationTheme(
          border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          labelStyle: TextStyle(color: Colors.white, fontSize: 12),
          hintStyle: TextStyle(color: Colors.white),
          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          prefixStyle: TextStyle(color: Colors.white),
          contentPadding: const EdgeInsets.all(8), 
        ),
      ),
    );
  }
}
