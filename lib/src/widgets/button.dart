import 'package:flutter/material.dart';

import '../core/core.dart';

class BCButtton extends StatelessWidget {
  final Widget child;
  final double wid, hei;
  final VoidCallback onTap;
  const BCButtton({super.key, required this.child, required this.onTap, required this.wid, required this.hei});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: AppColors.blue,
          fixedSize: Size(SizeConfig.width(wid), SizeConfig.height(hei)),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      child: child,
    );
  }
}
