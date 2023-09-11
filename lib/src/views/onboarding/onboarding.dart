import 'package:blog_club_app/src/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../core/core.dart';
import 'onboarddata.dart';
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
      bottomSheet: Material(
        elevation: 20,
        borderRadius: BorderRadius.circular(28),
        child: Container(
          height: SizeConfig.height(324),
          width: double.infinity,
          decoration: const BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(28), topRight: Radius.circular(28)),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40.0,
            ).copyWith(top: SizeConfig.height(32)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: PageView.builder(
                      clipBehavior: Clip.none,
                      controller: _pageController,
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        final onboard = data[index];
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              onboard.title,
                              style: Theme.of(context).textTheme.headlineLarge,
                            ),
                            Space.height(context, 16),
                            Text(
                              onboard.subtitle,
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        );
                      }),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmoothPageIndicator(
                        controller: _pageController,
                        count: data.length,
                        effect: const ExpandingDotsEffect(
                            dotHeight: 8,
                            dotWidth: 8,
                            dotColor: AppColors.dotColor,
                            activeDotColor: AppColors.blue),
                        onDotClicked: (index) {}),
                    BCButtton(
                        onTap: () {},
                        wid: 88,
                        hei: 60,
                        child: const Icon(Icons.arrow_forward)),
                  ],
                ),
                Space.height(context, 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
