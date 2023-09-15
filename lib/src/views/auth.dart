import 'package:blog_club_app/src/core/core.dart';
import 'package:blog_club_app/src/widgets/button.dart';
import 'package:blog_club_app/src/widgets/textfiedl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthView extends StatefulWidget {
  const AuthView({super.key});

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Space.height(29),
            Image.asset(
              ImagePath.logo,
              height: SizeConfig.height(56),
              width: SizeConfig.width(110),
            ),
            Space.height(30),
            Container(
              height: SizeConfig.height(575),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(28),
                    topRight: Radius.circular(28)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Welcome back',
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    Space.height(12),
                    Text(
                      'Sign in with your account',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    Space.height(37),
                    const BCTextField(
                      hintText: 'Username',
                    ),
                    Space.height(20),
                    const BCTextField(
                      hintText: 'Password',
                      isPassword: true,
                    ),
                    Space.height(30),
                    Center(
                      child: BCButtton(
                          onTap: () {},
                          wid: 295,
                          hei: 60,
                          child: Text(
                            'Login',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(color: AppColors.white),
                          )),
                    ),
                    Space.height(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Forgot your password?',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        Space.width(8),
                        GestureDetector(
                            child: Text(
                          'Reset here',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(color: AppColors.blue),
                        ))
                      ],
                    ),
                    Space.height(32),
                    Center(
                      child: Text(
                        'OR SIGN IN WITH',
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ),
                    Space.height(16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SvgPicture.asset(
                          SvgPath.google,
                          height: SizeConfig.height(36),
                          width: SizeConfig.width(36),
                        ),
                        SvgPicture.asset(
                          SvgPath.facebook,
                          height: SizeConfig.height(36),
                          width: SizeConfig.width(36),
                        ),
                        SvgPicture.asset(
                          SvgPath.twitter,
                          height: SizeConfig.height(36),
                          width: SizeConfig.width(36),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
