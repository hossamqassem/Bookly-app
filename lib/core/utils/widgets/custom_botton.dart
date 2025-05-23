import 'package:flutter/material.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton(
      {super.key,
      required this.backgroundColor,
      required this.textColor,
      this.borderRadius,
      required this.text,
      this.fontSize,
      this.onPressed});
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final double? fontSize;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12),
          ),
          // padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: fontSize,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
