import 'package:bookly/features/Splash/presentation/views/widgets/CustomBookImage.dart';
import 'package:flutter/material.dart';

class SimiliarBooksListView extends StatelessWidget {
  const SimiliarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .26,
      child: ListView.builder(
          itemCount: 20,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: CustomBookImage(
                imageUrl:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2-5k2rkbZTiLiCMllqHeSWzFNWxG8TlZwnA&s",
              ),
            );
          }),
    );
  }
}
