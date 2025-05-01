import 'package:bookly/constant.dart';
import 'package:bookly/features/Splash/presentation/views/homeview.dart';
import 'package:bookly/features/Splash/presentation/views/widgets/Sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation(); // بدء التحريك
    NavigateToHome();
  }

  void NavigateToHome() {
     Future.delayed(const Duration(seconds: 2), () {
      Get.to(() => const Homeview(), transition: Transition.fade,duration: kTransitionDuration);
    });
  }

  @override
  void dispose() {
    animationController.dispose(); // مهم جداً لتحرير الموارد
    super.dispose();
  }

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
        const SizedBox(height: 9),
        SlidingText(slidingAnimation: slidingAnimation)
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5), // قللت المدة لحركة أكثر وضوحاً
    );

    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 2), // يبدأ من أسفل (خارج الشاشة)
      end: Offset.zero, // ينتهي في المركز
    ).animate(animationController);

    animationController.forward();
  }
}
