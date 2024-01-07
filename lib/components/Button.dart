// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
// ignore: library_prefixes
import 'package:hostpitalmarketing/colors.dart' as baseColor;

class Button extends StatelessWidget {
  final String name;
  final double radius;
  final Color color;
  final Color backgroundColor;
  final double marginLeft, marginTop, marginRight, marginBottom;
  final VoidCallback onPress;
  final double height, width;
  final double fontSize;

  Button(
      {super.key,
      required this.name,
      this.radius = 10,
      this.color = Colors.white,
      this.backgroundColor = baseColor.primary,
      this.marginLeft = 8,
      this.marginTop = 8,
      this.marginRight = 8,
      this.marginBottom = 8,
      this.height = 45,
      this.width = double.infinity,
      this.fontSize = 14,
      VoidCallback? onPress})
      : onPress = onPress ?? (() {});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: marginLeft, top: marginTop),
        child: SizedBox(
          width: width > 0 ? width : null,
          height: height,
          child: ElevatedButton(
              onPressed: onPress,
              style: ElevatedButton.styleFrom(
                  backgroundColor: backgroundColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(radius))),
              child: Text(
                name,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(
                    color: color,
                    fontSize: fontSize,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins'),
              )),
        ));
  }
}
