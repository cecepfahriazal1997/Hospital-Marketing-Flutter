import 'package:flutter/material.dart';

class Label extends StatelessWidget {
  final String title;
  final double marginLeft, marginTop, marginRight, marginBottom;
  final double fontSize;
  final FontWeight fontWeight;

  const Label(
      {super.key,
      this.title = "",
      this.marginLeft = 0,
      this.marginTop = 0,
      this.marginRight = 0,
      this.marginBottom = 0,
      this.fontSize = 14,
      this.fontWeight = FontWeight.normal});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: marginLeft,
          top: marginTop,
          right: marginRight,
          bottom: marginBottom),
      child: Text(
        title,
        style: TextStyle(fontSize: fontSize, fontWeight: fontWeight),
      ),
    );
  }
}
