import 'package:bookly/core/utils/app_route.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/Splash/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.KBookDetailsView);
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * .30,
              child: AspectRatio(
                aspectRatio: 3 / 4,
                child: Container(
                  decoration: const BoxDecoration(
                      // color: Colors.red,
                      image: DecorationImage(
                          image: AssetImage(AssetsData.testImage),
                          fit: BoxFit.fill)),
                ),
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .45,
                    child: Text(
                      'Jungle potter  and the Global of Fire ',
                      style: Styles.TextStyle20.copyWith(fontSize: 22),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .45,
                    child: Text(
                      'JK ROWBER ',
                      style: Styles.TextStyle16.copyWith(
                        color: const Color.fromARGB(182, 255, 255, 255),
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "19.99 €",
                          style: Styles.TextStyle20,
                        ),
                        BookRating(
                          mainAxisAlignment: MainAxisAlignment.center,
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
