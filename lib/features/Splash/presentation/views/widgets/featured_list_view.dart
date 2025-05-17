import 'package:bookly/features/Splash/presentation/views/widgets/CustomBookImage.dart';
import 'package:bookly/features/Splash/presentation/views/widgets/custom_loading_indecator.dart';
import 'package:bookly/features/Splash/presentation/views/widgets/custom_widget_error.dart';
import 'package:bookly/features/search/presentation/manager/featured_books.dart/featured%20books/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBookSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .25,
            child: ListView.builder(
                itemCount:state.books.length,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 7),
                    child: CustomBookImage(
                      
                      imageUrl: state
                          .books[index].volumeInfo.imageLinks.thumbnail
                          .toString(),
                    ),
                  );
                }),
          );
        } else if (state is FeaturedBooksFaliure) {
          return CustomWidgetError(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndecator();
        }
      },
    );
  }
}
