// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../core/core.dart';

class ArticleReadView extends StatelessWidget {
  const ArticleReadView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        leadingWidth: 100,
        leading: IconButton(
            onPressed: () => context.pop(),
            icon: const Icon(
              Icons.chevron_left,
              color: Colors.black,
            )),
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
        child: Stack(children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Space.height(20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Text(
                    'Four Things Every Woman Needs To Know',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ),
                Space.height(32),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: ListTile(
                    isThreeLine: true,
                    minLeadingWidth: 0,
                    minVerticalPadding: 0,
                    visualDensity:
                        const VisualDensity(horizontal: 0, vertical: 0),
                    contentPadding: EdgeInsets.zero,
                    leading: GestureDetector(
                      onTap: () => context.pushNamed(
                        RouteConstants.profilePage,
                      ),
                      child: SizedBox(
                        height: SizeConfig.height(38),
                        width: SizeConfig.width(38),
                        child: Image.asset(
                          ImagePath.avatar2,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: Text(
                      'Richard Gervain',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    subtitle: Text(
                      '2m ago',
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(SvgPath.send),
                        Space.width(24),
                        SvgPicture.asset(SvgPath.bookmark),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: SizeConfig.height(219),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                      image: DecorationImage(
                          image: AssetImage(ImagePath.girl),
                          fit: BoxFit.cover)),
                ),
                Space.height(32),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.start,
                    runSpacing: 16,
                    children: [
                      Text(
                        'A man’s sexuality is never your mind responsibility.',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      Text(
                        'This one got an incredible amount of backlash the last time I said it, so I’m going to say it again: a man’s sexuality is never, ever your responsibility, under any circumstances. Whether it’s the fifth date or your twentieth year of marriage, the correct determining factor for whether or not you have sex with your partner isn’t whether you ought to “take care of him” or “put out” because it’s been a while or he’s really horny — the correct determining factor for whether or not you have sex is whether or not you want to have sex.',
                        style: Theme.of(context).textTheme.bodySmall,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 50,
            right: 40.0,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      SvgPath.like,
                      color: AppColors.white,
                    ),
                    Space.width(10),
                    Text(
                      '2.1k',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: AppColors.white,
                          ),
                    )
                  ],
                )),
          ),
        ]),
      ),
    );
  }
}
