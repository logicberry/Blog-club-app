import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SizeConfig {
  static void init(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: const Size(375, 812),
      minTextAdapt: true,
    );
  }

  static double get screenWidth => 1.sw;
  static double get screenHeight => 1.sw;
  static height(double height) => height.h;
  static width(double width) => width.w;
  static text(double size) => size.sp;
  static radius(double size) => size.r;
}
