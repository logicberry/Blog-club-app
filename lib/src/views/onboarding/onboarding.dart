import 'package:flutter/material.dart';

import '../../core/core.dart';
import 'widget/image_container.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          children: [
            Space.height(context, 50),
            Row(
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
            )
          ],
        ),
      )),
    );
  }
}
