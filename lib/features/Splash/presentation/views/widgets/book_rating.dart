import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, required this.mainAxisAlignment});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(
          Icons.star,
          color: Color(0xffFFDD4F),
        ),
        Text(
          '4.5',
          style: Styles.TextStyle14,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          '(1951)',
          style: Styles.TextStyle14.copyWith(
              fontWeight: FontWeight.w600,
              color: const Color.fromARGB(175, 158, 158, 158)),
        )
      ],
    );
  }
}
