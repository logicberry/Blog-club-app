import 'package:flutter/material.dart';

import '../../core/core.dart';
import 'widget/image_container.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _pageController = PageController(
    initialPage: 0,
    viewportFraction: 1.0,
  );
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Space.height(context, 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const ImageContainer(
                  height: 158,
                  width: 93,
                  path: ImagePath.boy,
                ),
                Space.width(context, 13),
                const ImageContainer(
                  height: 158,
                  width: 190,
                  path: ImagePath.photo,
                ),
              ],
            ),
            Space.height(context, 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const ImageContainer(
                  height: 158,
                  width: 190,
                  path: ImagePath.diver,
                ),
                Space.width(context, 13),
                const ImageContainer(
                  height: 158,
                  width: 93,
                  path: ImagePath.sky,
                ),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
