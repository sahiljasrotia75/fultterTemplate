

import 'package:flutter/material.dart';

class SocalCard extends StatelessWidget {
  const SocalCard({Key key, this.press}) : super(key: key);
  final Function press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        height: 40.0,
        width: 40.0,
        padding: EdgeInsets.all(12.0),
        decoration:
        BoxDecoration(color: Color(0xFFF5F6F9), shape: BoxShape.circle),
        child: Icon(Icons.android_rounded),
      ),
    );
  }
}