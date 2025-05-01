import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SvgPicture.asset(
            'assets/images/logo_bookly.svg',
            width: 100,
            height: 80,
          ),
          const SizedBox(
            height: 9,
          ),
          const Center(child: Text('Read Free Books')),
        ]);
  }
}
