// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:hostpitalmarketing/colors.dart' as baseColor;

class Button extends StatelessWidget {
  String name;
  double radius;
  Color color;
  Color backgroundColor;
  double paddingLeft, paddingTop, paddingRight, paddingBottom;
  VoidCallback onPress;

  Button(
      {super.key,
      required this.name,
      this.radius = 16,
      this.color = Colors.white,
      this.backgroundColor = baseColor.primary,
      this.paddingLeft = 0,
      this.paddingTop = 0,
      this.paddingRight = 0,
      this.paddingBottom = 0,
      VoidCallback? onPress})
      : onPress = onPress ?? (() {});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: paddingLeft, top: paddingTop),
        child: InkWell(
            onTap: onPress,
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(radius)),
              child: Center(
                child: Text(
                  name,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(color: color, fontWeight: FontWeight.bold),
                ),
              ),
            )));
  }
}
