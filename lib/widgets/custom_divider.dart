import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  final double? height;
  final double? thikNess;

  final Color? color;

  const CustomDivider(
      {super.key,
       this.height,
       this.color,
       this.thikNess});

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: color,
      height: height,
      thickness: thikNess,
    );
  }
}
