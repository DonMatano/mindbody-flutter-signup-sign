import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WelcomePage extends StatelessWidget {
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
                  image: DecorationImage(
                      image: AssetImage('images/yoga.jpg'),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.deepOrangeAccent.withOpacity(0.8),
                          BlendMode.srcOver))),
            ),
            Column(
              children: <Widget>[
                SizedBox(height: 75.0,),
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
                      Text('BODY', 
                        style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),
                      ),
                      Text('\u00a9', 
                        style: TextStyle(color: Colors.white, fontSize: 10.0),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
