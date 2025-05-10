import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/Splash/presentation/views/widgets/CustomBookImage.dart';
import 'package:bookly/features/Splash/presentation/views/widgets/book_details_section.dart';
import 'package:bookly/features/Splash/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/Splash/presentation/views/widgets/books_action.dart';
import 'package:bookly/features/Splash/presentation/views/widgets/books_similiar_widget.dart';
import 'package:bookly/features/Splash/presentation/views/widgets/custom_book_details_appbar.dart';
import 'package:bookly/features/Splash/presentation/views/widgets/similia_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: const [
                BookDetailsSection(),
                SizedBox(height: 50),
                SimiliarBooksWidget(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
