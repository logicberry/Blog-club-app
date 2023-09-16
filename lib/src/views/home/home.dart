import 'package:blog_club_app/src/views/home/widget/statuscard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/core.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 28.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Space.height(25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hi, Malik!',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 28.0),
                  child: SvgPicture.asset(SvgPath.notifi),
                ),
              ],
            ),
            Space.height(7),
            Text(
              "Explore today’s",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Space.height(20),
            SizedBox(
              height: SizeConfig.height(92),
              child: ListView(
                scrollDirection: Axis.horizontal,
                physics: const AlwaysScrollableScrollPhysics(),
                shrinkWrap: true,
                children: const [
                  StatusProfile(
                    name: 'Emilia',
                    imagepath: ImagePath.avatar1,
                    svgpath: SvgPath.video,
                  ),
                  StatusProfile(
                    name: 'Richard',
                    imagepath: ImagePath.avatar2,
                    svgpath: SvgPath.lotus,
                  ),
                  StatusProfile(
                    name: 'Jasmine',
                    imagepath: ImagePath.avatar3,
                    svgpath: SvgPath.lamp,
                  ),
                  StatusProfile(
                    name: 'Lucas',
                    imagepath: ImagePath.avatar4,
                    svgpath: SvgPath.love,
                  ),
                  StatusProfile(
                    name: 'Malik',
                    imagepath: ImagePath.avatar1,
                    svgpath: SvgPath.video,
                  ),
                  StatusProfile(
                    name: 'Malik',
                    imagepath: ImagePath.avatar1,
                    svgpath: SvgPath.video,
                  ),
                  StatusProfile(
                    name: 'Malik',
                    imagepath: ImagePath.avatar1,
                    svgpath: SvgPath.video,
                  ),
                ],
              ),
            ),
            Space.height(32),
            Stack(children: [
              Container(
                height: 273,
                width: 236,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    image: const DecorationImage(
                        image: AssetImage(ImagePath.photo), fit: BoxFit.fill)),
              ),
              Positioned(
                  bottom: 30,
                  left: 24,
                  child: Text(
                    'Technology',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: AppColors.white, fontWeight: FontWeight.bold),
                  ))
            ]),
          ],
        ),
      )),
    );
  }
}
