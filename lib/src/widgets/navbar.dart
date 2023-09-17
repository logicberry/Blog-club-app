// ignore_for_file: deprecated_member_use

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../core/core.dart';
import '../views/article/article.dart';
import '../views/home/home.dart';
import '../views/menu/menu.dart';
import '../views/search/search.dart';

class NavBar extends StatefulWidget {
  static const String routeName = '/nav';
  final int? current;
  const NavBar({
    Key? key,
    this.current = 0,
  }) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final PageController _pageController = PageController(initialPage: 0);
  int? _currentPage;

  @override
  void initState() {
    super.initState();
    _currentPage = widget.current;
    Future.delayed(const Duration(milliseconds: 100), () {
      _pageController.jumpToPage(_currentPage!);
    });
  }

  List<Widget> pages = [
    const HomeView(),
    const ArticleView(),
    const SearchView(),
    const MenuView(),
  ];
  void updatePage(int page) {
    if (_currentPage != null) {
      _pageController.jumpToPage(page);
      setState(() {
        _currentPage = page;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: PageView.builder(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        itemCount: pages.length,
        onPageChanged: updatePage,
        itemBuilder: (context, index) {
          return pages[index];
        },
      ),
      bottomNavigationBar: Container(
        height: 82.5,
        decoration: const BoxDecoration(
          border: Border(top: BorderSide(width: 0.5)),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          selectedFontSize: 10,
          unselectedFontSize: 10,
          currentIndex: _currentPage!,
          selectedIconTheme: const IconThemeData(color: AppColors.blue),
          unselectedIconTheme: const IconThemeData(color: AppColors.darkBlue),
          selectedItemColor: AppColors.blue,
          unselectedItemColor: AppColors.darkBlue,
          unselectedLabelStyle: Theme.of(context).textTheme.labelSmall,
          selectedLabelStyle: Theme.of(context).textTheme.labelSmall,
          backgroundColor: Colors.transparent,
          iconSize: 20,
          onTap: updatePage,
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: SvgPicture.asset(
                  SvgPath.home,
                ),
              ),
              activeIcon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: SvgPicture.asset(
                  SvgPath.home,
                  color: AppColors.blue,
                ),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: SvgPicture.asset(SvgPath.article),
              ),
              activeIcon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: SvgPicture.asset(
                  SvgPath.article,
                  color: AppColors.blue,
                ),
              ),
              label: 'Article',
            ),
            BottomNavigationBarItem(
                icon: const CircleAvatar(
                  radius: 30,
                  child: Icon(Icons.add),
                ),
                activeIcon: CircleAvatar(
                  backgroundColor: AppColors.darkBlue,
                  radius: 30,
                  child: Transform.rotate(
                    angle: 30 * pi / 180,
                    child: const Icon(
                      Icons.add,
                    ),
                  ),
                ),
                label: ''),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: SvgPicture.asset(SvgPath.search),
              ),
              activeIcon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: SvgPicture.asset(
                  SvgPath.search,
                  color: AppColors.blue,
                ),
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: SvgPicture.asset(
                  SvgPath.menu,
                ),
              ),
              activeIcon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: SvgPicture.asset(
                  SvgPath.menu,
                  color: AppColors.blue,
                ),
              ),
              label: 'Menu',
            ),
          ],
        ),
      ),
    );
  }
}
