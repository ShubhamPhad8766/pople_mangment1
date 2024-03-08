import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final Color? bgcolor;
  final double? width;
  final double? height;
  final double borderRadius;
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.color,
    required this.borderRadius,
    this.bgcolor,
    this.width,
    this.height,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: bgcolor,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: color,
          ),
        ),
      ),
    );
  }
}
