import 'package:bookly/features/Splash/presentation/views/widgets/books_action.dart';
import 'package:bookly/features/Splash/presentation/views/widgets/similia_books_list_view.dart';
import 'package:flutter/material.dart';

class SimiliarBooksWidget extends StatelessWidget {
  const SimiliarBooksWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 37),
        BooksAction(),
        SizedBox(height: 40),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "You may also like",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(height: 18),
        SimiliarBooksListView(),
      ],
    );
  }
}
