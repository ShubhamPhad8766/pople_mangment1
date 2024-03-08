import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontsize;
  final Color color;
  final Color? bgcolor;
  final fontweight;
  final TextStyle? textStyle;
  const CustomText(
      {super.key,
      required this.text,
      required this.fontsize,
      required this.color,
      this.bgcolor,
      this.textStyle,
      this.fontweight});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            color: color,
            backgroundColor: bgcolor,
            fontWeight: fontweight,
            fontSize: fontsize));
  }
}
