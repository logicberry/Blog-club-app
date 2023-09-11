import 'package:flutter/material.dart';

import '../../../core/core.dart';

class ImageContainer extends StatelessWidget {
  final double height, width;
  final String path;
  const ImageContainer({
    super.key,
    required this.height,
    required this.width,
    required this.path,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 20,
      borderRadius: BorderRadius.circular(24),
      child: Container(
        height: SizeConfig.height(height),
        width: SizeConfig.width(width),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            image: DecorationImage(image: AssetImage(path), fit: BoxFit.cover)),
      ),
    );
  }
}
