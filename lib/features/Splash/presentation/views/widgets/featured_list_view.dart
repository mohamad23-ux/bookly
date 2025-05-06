
import 'package:bookly/features/Splash/presentation/views/widgets/CustomBookImage.dart';
import 'package:bookly/features/Splash/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .25,
      child: ListView.builder(
          itemCount: 20,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: CustomBookImage(),
            );
          }),
    );
  }
}