

import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: Color(0xffFFDD4F),
        ),
        Text(
          '(245)',
          style: Styles.TextStyle14,
        )
      ],
    );
  }
}
