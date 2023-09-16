import 'package:blog_club_app/src/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StatusProfile extends StatelessWidget {
  final String name, svgpath, imagepath;

  const StatusProfile(
      {super.key,
      required this.name,
      required this.svgpath,
      required this.imagepath});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Column(
        children: [
          Stack(children: [
            Container(
              height: SizeConfig.height(68),
              width: SizeConfig.width(68),
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.blue,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Container(
                height: SizeConfig.height(54),
                width: SizeConfig.width(54),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Image.asset(
                    imagepath,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Positioned(bottom: 0, right: -2, child: SvgPicture.asset(svgpath))
          ]),
          Space.height(6),
          Text(
            name,
            style: Theme.of(context).textTheme.labelLarge,
          )
        ],
      ),
    );
  }
}
