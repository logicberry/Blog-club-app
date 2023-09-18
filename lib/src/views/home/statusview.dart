import 'dart:math';

import 'package:flutter/material.dart';
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
          Stack(children: [
            Container(
              height: SizeConfig.height(685),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  image: DecorationImage(image: AssetImage(ImagePath.status))),
            ),
            Positioned(
                child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: const Column(
                children: [
                  Text('Do You Want To Live A Happy Life? Smile.'),
                  Text(
                      'Sometimes there’s no reason to smile, but I’ll smile anyway because of life. Yes, I’m one of those people who always smiles.'),
                ],
              ),
            )),
            Positioned(
                child: Column(
              children: [
                Row(
                  children: [
                    Row(
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
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: ListTile(
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
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    subtitle: Text(
                      '4m ago',
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    trailing: Transform.rotate(
                      angle: 30 * pi / 180,
                      child: const Icon(
                        Icons.add,
                      ),
                    ),
                  ),
                ),
              ],
            ))
          ]),
          Space.height(15),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text('Read More'),
              ),
              Column(
                children: [SvgPicture.asset(SvgPath.love), const Text('450K')],
              )
            ],
          ),
        ],
      ),
    );
  }
}
