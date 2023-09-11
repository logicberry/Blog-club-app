import 'package:blog_club_app/src/core/core.dart';
import 'package:flutter/widgets.dart';

class Space {
  static SizedBox height(BuildContext context, double height) {
    return SizedBox(height: SizeConfig.height(height));
  }

  static SizedBox width(BuildContext context, double width) {
    return SizedBox(width: SizeConfig.width(width));
  }
}
