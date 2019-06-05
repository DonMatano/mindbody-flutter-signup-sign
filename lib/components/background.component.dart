import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  final String _imageUrl;

  BackgroundImage(this._imageUrl);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(_imageUrl),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.deepOrangeAccent.withOpacity(0.8),
                  BlendMode.srcOver))),
    );
  }
}
