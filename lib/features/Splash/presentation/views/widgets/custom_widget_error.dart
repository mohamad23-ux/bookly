import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomWidgetError extends StatelessWidget {
  final String errMessage;
  const CustomWidgetError({super.key, required this.errMessage});

  @override
  Widget build(BuildContext context) {
    return Text(
      errMessage,
      style: Styles.TextStyle20,
    );
  }
}
