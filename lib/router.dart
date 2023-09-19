import 'package:blog_club_app/src/views/aricle.dart';
import 'package:blog_club_app/src/views/auth.dart';
import 'package:blog_club_app/src/views/onboarding/onboarding.dart';
import 'package:blog_club_app/src/views/profile.dart';
import 'package:blog_club_app/src/widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'src/core/route_constant.dart';
import 'src/views/home/statusview.dart';

class AppRouter {
  GoRouter router = GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(
          name: RouteConstants.onboardingPage,
          path: '/',
          builder: (context, state) => const OnboardingView(),
        ),
        GoRoute(
          name: RouteConstants.artileread,
          path: '/readarticle',
          pageBuilder: (context, state) {
            return const MaterialPage(child: ArticleReadView());
          },
        ),
        GoRoute(
          name: RouteConstants.auth,
          path: '/auth',
          pageBuilder: (context, state) {
            return const MaterialPage(child: AuthView());
          },
        ),
        GoRoute(
          name: RouteConstants.mainPage,
          path: '/mainPage',
          pageBuilder: (context, state) {
            return const MaterialPage(child: NavBar());
          },
        ),
        GoRoute(
          name: RouteConstants.statusPage,
          path: '/statusPage',
          pageBuilder: (context, state) {
            return const MaterialPage(child: StatusView());
          },
        ),
        GoRoute(
          name: RouteConstants.profilePage,
          path: '/profilePage',
          pageBuilder: (context, state) {
            return const MaterialPage(child: ProfileView());
          },
        ),
        // GoRoute(
        //   name: RouteConstants.profilePage,
        //   path: '/profilePage/:id',
        //   pageBuilder: (context, state) {
        //     return  MaterialPage(child: ProfileView(
        //       id: state.pathParameters['id']!,
        //     ));
        //   },
        // ),
      ],
      // redirect: (context, state) async {
      //   bool isAuthenticated = false;
      //   if (!isAuthenticated && state.matchedLocation == '/') {
      //     return state.namedLocation(RouteConstants.auth);
      //   }
      //   // ignore: dead_code
      //   return null;
      // },
      errorPageBuilder: (context, state) {
        return const MaterialPage(
            child: Scaffold(
          body: Center(
            child: Text('ERROR 404'),
          ),
        ));
      });
}
