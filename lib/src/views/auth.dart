import 'package:blog_club_app/src/core/core.dart';
import 'package:flutter/material.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Space.height(29),
          Image.asset(
            ImagePath.logo,
            height: 40,
            width: 100,
          ),
          Container()
        ],
      )),
    );
  }
}
