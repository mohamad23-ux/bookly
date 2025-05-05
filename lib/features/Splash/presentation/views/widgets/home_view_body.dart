import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/Splash/presentation/views/widgets/CustomAppbar.dart';
import 'package:bookly/features/Splash/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(
            height: 50,
          ),
          Text(
            'Best Seller',
            style: Styles.titleMedium,
          )
        ],
      ),
    );
  }
}

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
