import 'package:bookly/core/utils/app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 45),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/images/logo_bookly.svg',
            width: 50,
            height: 22,
          ),
          Spacer(),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push(AppRouter.searchView);
              },
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 24,
              ))
        ],
      ),
    );
  }
}
