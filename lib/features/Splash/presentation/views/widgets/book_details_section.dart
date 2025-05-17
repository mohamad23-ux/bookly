import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/Splash/presentation/views/widgets/CustomBookImage.dart';
import 'package:bookly/features/Splash/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/Splash/presentation/views/widgets/custom_book_details_appbar.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomBookDetailsAppbar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.15),
          child: const CustomBookImage(
            imageUrl:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2-5k2rkbZTiLiCMllqHeSWzFNWxG8TlZwnA&s",
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          'The Jungle Book',
          style: Styles.TextStyle30,
        ),
        const Opacity(
          opacity: 0.7,
          child: Text(
            "Rudyard Kipling",
            style: TextStyle(
              fontSize: 16,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        const SizedBox(height: 10),
        const BookRating(mainAxisAlignment: MainAxisAlignment.center),
      ],
    );
  }
}
