import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/core.dart';

class StatusView extends StatelessWidget {
  const StatusView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: AppColors.blue,
      body: Column(
        children: [
          Container(
            height: SizeConfig.height(710),
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                image: DecorationImage(
                    image: AssetImage(ImagePath.status),
                    fit: BoxFit.fill,
                    opacity: 0.7)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0)
                  .copyWith(top: 70),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          height: 4,
                          width: 93,
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(20))),
                      Container(
                          height: 4,
                          width: 93,
                          decoration: BoxDecoration(
                              color: AppColors.darkGrey,
                              borderRadius: BorderRadius.circular(20))),
                      Container(
                          height: 4,
                          width: 93,
                          decoration: BoxDecoration(
                              color: AppColors.darkGrey,
                              borderRadius: BorderRadius.circular(20))),
                    ],
                  ),
                  Space.height(10),
                  ListTile(
                    isThreeLine: true,
                    minLeadingWidth: 0,
                    minVerticalPadding: 0,
                    visualDensity:
                        const VisualDensity(horizontal: 0, vertical: 0),
                    contentPadding: EdgeInsets.zero,
                    leading: SizedBox(
                      height: SizeConfig.height(38),
                      width: SizeConfig.width(38),
                      child: Image.asset(
                        ImagePath.avatar3,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text(
                      'Jasmine Levin',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: AppColors.white, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      '4m ago',
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            color: AppColors.white,
                          ),
                    ),
                    trailing: Transform.rotate(
                      angle: 40 * pi / 180,
                      child: const Icon(
                        Icons.add,
                        color: AppColors.white,
                        size: 30,
                      ),
                    ),
                  ),
                  Space.height(280),
                  Container(
                    height: SizeConfig.height(200),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 10),
                        child: Container(
                          color: Colors.white.withOpacity(0.1),
                          child: Padding(
                            padding: EdgeInsets.all(30.0.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Do You Want To Live A Happy Life? Smile.',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineMedium
                                      ?.copyWith(
                                        color: AppColors.white,
                                      ),
                                ),
                                Space.height(5),
                                Text(
                                  'Sometimes there’s no reason to smile, but I’ll smile anyway because of life. Yes, I’m one of those people who always smiles.',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(
                                          color: AppColors.white, height: 1.5),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Space.height(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(''),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: Text(
                  'Read More',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppColors.blue,
                      ),
                ),
              ),
              Column(
                children: [
                  SvgPicture.asset(SvgPath.heart),
                  Space.height(5),
                  Text(
                    '450K',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: AppColors.white,
                        ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
