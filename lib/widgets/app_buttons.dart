import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/widgets/App_text.dart';

import '../colors/colors.dart';

class AppButtons extends StatelessWidget {
  String? text;
  IconData? icon;
  final Color color;
  final Color backgroundColor;
  double size;
  final Color bordercolor;
  bool isIcon;

  AppButtons(
      {super.key,
      this.text = "Hi",
      this.isIcon = false,
      this.icon,
      required this.size,
      required this.color,
      required this.backgroundColor,
      required this.bordercolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all(color: bordercolor, width: 1.0),
        borderRadius: BorderRadius.circular(15),
        color: backgroundColor,
      ),
      child: isIcon == false
          ? Center(
              child: AppText(
              text: text!,
              color: color,
            ))
          : Center(
              child: Icon(
              icon,
              color: color,
            )),
    );
  }
}
