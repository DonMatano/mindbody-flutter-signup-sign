import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mindblown_sign_in_up_flutter/pages/welcome.page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: 
  Colors.deepOrangeAccent));
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headline: TextStyle(color: Colors.white, ),
          body1: TextStyle(color: Colors.white)
        )
      ),
      home: WelcomePage()
    );
  }
}
