import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    this.borderRadius,
    required this.text,
    this.fontsize,
  });
  final String text;
  final double? fontsize;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: borderRadius ?? BorderRadius.circular(16)),
              backgroundColor: backgroundColor),
          child: Text(
            text,
            style: Styles.TextStyle16.copyWith(
                color: textColor, fontWeight: FontWeight.w900),
          )),
    );
  }
}
