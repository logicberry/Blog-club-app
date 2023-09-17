import 'package:blog_club_app/src/views/home/widget/newscard.dart';
import 'package:blog_club_app/src/views/home/widget/statuscard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/core.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        titleSpacing: 30,
        toolbarHeight: 110,
        centerTitle: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Malik!',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Space.height(7),
            Text(
              "Explore today’s",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 50.0.w, bottom: 28),
            child: SvgPicture.asset(SvgPath.notifi),
          ),
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: SizeConfig.height(96),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
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
                Material(
                  elevation: 30,
                  borderRadius: BorderRadius.circular(28),
                  child: Container(
                    height: 273.h,
                    width: 236.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28),
                        image: const DecorationImage(
                            image: AssetImage(ImagePath.photo),
                            fit: BoxFit.fill)),
                  ),
                ),
                Positioned(
                    bottom: 30,
                    left: 24,
                    child: Text(
                      'Technology',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(
                              color: AppColors.white,
                              fontWeight: FontWeight.bold),
                    ))
              ]),
              Space.height(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Latest News',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 50.0.w),
                    child: Text(
                      'More',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: AppColors.blue),
                    ),
                  ),
                ],
              ),
              Space.height(24),
              const NewsCard(),
              const NewsCard()
            ],
          ),
        ),
      )),
    );
  }
}
