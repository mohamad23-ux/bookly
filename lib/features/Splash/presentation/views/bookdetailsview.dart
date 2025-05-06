import 'package:bookly/features/Splash/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';

class BookDetailsview extends StatelessWidget {
  const BookDetailsview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: BookDetailsViewBody()));
  }
}
