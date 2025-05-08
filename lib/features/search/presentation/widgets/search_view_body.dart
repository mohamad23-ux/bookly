import 'package:bookly/features/search/presentation/widgets/custom_text_field_Search.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: const Column(
        children: [CustomSearchTextField()],
      ),
    );
  }
}
