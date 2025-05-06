import 'package:bookly/core/utils/widget/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
              child: CustomButton(
            text: "19.99 €",
            textColor: Color.fromARGB(255, 0, 0, 0),
            backgroundColor: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
          )),
          Expanded(
              child: CustomButton(
            text: "Free Preview",
            textColor: Color.fromARGB(255, 255, 255, 255),
            backgroundColor: Color.fromARGB(255, 242, 70, 70),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12)),
          )),
        ],
      ),
    );
  }
}
