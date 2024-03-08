import 'package:flutter/material.dart';

class CustomSearch extends StatelessWidget {
  final Decoration? decoration;
  final InputDecoration? inputDecoration;
  final double? height;
  final double? width;

  const CustomSearch({
    super.key,
    this.decoration,
    this.inputDecoration,
    this.height,
    this.width,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: TextField(
        decoration: inputDecoration ??
            const InputDecoration(
              border: OutlineInputBorder(),
            ),
      ),
    );
  }
}
