import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/Splash/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly/features/search/presentation/widgets/custom_text_field_Search.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: const Column(
        children: [
          CustomSearchTextField(),
          SizedBox(
            height: 19,
          ),
          Row(
            children: [
              Text(
                "Our love items",
                style: Styles.TextStyle20,
              ),
            ],
          ),
          Expanded(child: SearchResultListView())
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        // physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const BestSellerListViewItem();
        });
  }
}
