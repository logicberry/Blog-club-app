import 'package:blog_club_app/src/views/home/widget/newscard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../core/core.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        titleSpacing: 0,
        toolbarHeight: 100,
        centerTitle: false,
        title: Text(
          'Profile',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        actions: [
          Padding(
              padding: EdgeInsets.only(
                right: 50.0.w,
              ),
              child: const Icon(
                Icons.more_horiz,
                color: Colors.black,
              )),
        ],
      ),
      body: SafeArea(
          child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFFFFFFF), Color(0xFFF4F7FF)],
            stops: [0.0109, 1.0963],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            transform: GradientRotation(57 * 3.14159265359 / 180.0),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: SizedBox(
                  height: SizeConfig.height(318),
                  child: Stack(children: [
                    SizedBox(
                      height: SizeConfig.height(284),
                      child: Material(
                        elevation: 1,
                        borderRadius: BorderRadius.circular(30),
                        color: AppColors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 32.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Space.height(32),
                              Row(
                                children: [
                                  Container(
                                    height: SizeConfig.height(84),
                                    width: SizeConfig.width(84),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: AppColors.blue,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                    child: Container(
                                      height: SizeConfig.height(66),
                                      width: SizeConfig.width(66),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(18),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Image.asset(
                                          ImagePath.avatar1,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Space.width(24),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '@joviedan',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall,
                                      ),
                                      Text(
                                        'Jovi Daniel',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineMedium,
                                      ),
                                      Text(
                                        'UX Designer',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.copyWith(color: AppColors.blue),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Space.height(24),
                              Text(
                                'About me',
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
                              ),
                              Space.height(8),
                              Text(
                                'Madison Blackstone is a director of user experience design, with experience managing global teams.',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(height: 20 / 14),
                              ),
                              Space.height(20),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 30,
                        child: Material(
                          elevation: 10,
                          borderRadius: BorderRadius.circular(12),
                          child: Container(
                            height: SizeConfig.height(68),
                            width: SizeConfig.width(231),
                            decoration: BoxDecoration(
                              color: AppColors.blue,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: SizeConfig.height(68),
                                  width: SizeConfig.width(77),
                                  decoration: BoxDecoration(
                                    color: AppColors.cardBlue,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '52',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge
                                            ?.copyWith(color: AppColors.white),
                                      ),
                                      Text(
                                        'Posts',
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelMedium
                                            ?.copyWith(color: AppColors.white),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: SizeConfig.height(68),
                                  width: SizeConfig.width(77),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '250',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge
                                            ?.copyWith(color: AppColors.white),
                                      ),
                                      Text(
                                        'Following',
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelMedium
                                            ?.copyWith(color: AppColors.white),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: SizeConfig.height(68),
                                  width: SizeConfig.width(77),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        '4.5K',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge
                                            ?.copyWith(color: AppColors.white),
                                      ),
                                      Text(
                                        'Followers',
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelMedium
                                            ?.copyWith(
                                              color: AppColors.white,
                                            ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ))
                  ]),
                ),
              ),
              Space.height(20),
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: AppColors.white,
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Space.height(32),
                        Row(
                          children: [
                            Text(
                              'My Posts',
                              style: Theme.of(context).textTheme.headlineLarge,
                            ),
                            const Spacer(),
                            SvgPicture.asset(SvgPath.grid),
                            Space.width(24),
                            SvgPicture.asset(SvgPath.table)
                          ],
                        ),
                        Space.height(24),
                        const NewsCard(),
                        const NewsCard(),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
