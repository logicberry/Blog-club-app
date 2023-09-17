import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/core.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: SizedBox(
        height: SizeConfig.height(141),
        width: SizeConfig.width(295),
        child: Material(
          color: AppColors.white,
          elevation: 1,
          shadowColor: AppColors.blue,
          borderRadius: BorderRadius.circular(18),
          child: Row(
            children: [
              Image.asset(
                ImagePath.chain,
                fit: BoxFit.fill,
                width: 92.w,
                height: 141.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'BIG DATA',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppColors.blue, fontWeight: FontWeight.bold),
                    ),
                    Wrap(children: [
                      Text('Why Big Data Needs\nThick Data?',
                          style: Theme.of(context).textTheme.bodySmall)
                    ]),
                    Space.height(4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              SvgPath.bookmark,
                              width: 16.w,
                              height: 16.h,
                            ),
                            Space.width(4),
                            Text('2.1',
                                style: Theme.of(context).textTheme.labelLarge),
                          ],
                        ),
                        Space.width(10),
                        Row(
                          children: [
                            SvgPicture.asset(
                              SvgPath.bookmark,
                              width: 16.w,
                              height: 16.h,
                            ),
                            Space.width(4),
                            Text('1hr ago',
                                style: Theme.of(context).textTheme.labelLarge),
                          ],
                        ),
                        Space.width(10),
                        SvgPicture.asset(
                          SvgPath.bookmark,
                          width: 16.w,
                          height: 16.h,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
