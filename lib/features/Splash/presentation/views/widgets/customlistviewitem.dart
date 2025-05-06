import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .38,
      child: AspectRatio(
        aspectRatio: 2 / 4,
        child: Container(
          decoration: const BoxDecoration(
              // color: Colors.red,
              image: DecorationImage(
                  image: AssetImage(AssetsData.testImage), fit: BoxFit.fill)),
        ),
      ),
    );
  }
}