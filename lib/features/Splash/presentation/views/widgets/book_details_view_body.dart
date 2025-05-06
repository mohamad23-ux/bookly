import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/Splash/presentation/views/widgets/CustomBookImage.dart';
import 'package:bookly/features/Splash/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/Splash/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailsAppbar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .15),
            child: const CustomBookImage(),
          ),
          Text(
            'The Jungle Book',
            style: Styles.TextStyle30,
          ),
          Opacity(
            opacity: .7,
            child: Text(
              "Rudyard kipling",
              style: Styles.TextStyle16.copyWith(fontStyle: FontStyle.italic),
            ),
          ),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          )
        ],
      ),
    );
  }
}

class CustomBookDetailsAppbar extends StatelessWidget {
  const CustomBookDetailsAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.shopping_cart_outlined)),
        ],
      ),
    );
  }
}
