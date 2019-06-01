import 'dart:ui';

import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
              child: Stack(
            children: <Widget>[
              // Image.asset('images/yoga.jpg', fit: BoxFit.cover, height: double.infinity,),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('images/yoga.jpg'), fit: BoxFit.cover, colorFilter: ColorFilter.mode(Colors.deepOrangeAccent.withOpacity(0.8), BlendMode.srcOver)) 
                ),
              )
            ],
          ),
      ),
    );
  }

}
