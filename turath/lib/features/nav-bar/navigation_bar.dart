import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_navigation_bar/responsive_navigation_bar.dart';
import 'package:turath/core/utils/app_colors.dart';

class NavigationBarBottom extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTabChange;

  const NavigationBarBottom({
    super.key,
    required this.selectedIndex,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveNavigationBar(
      selectedIndex: selectedIndex,
      onTabChange: onTabChange,
      textStyle: TextStyle(
        color: AppColors.textColorPrimary,
        fontWeight: FontWeight.bold,
      ),
      navigationBarButtons: const <NavigationBarButton>[
        NavigationBarButton(
          text: 'Home',
          icon: CupertinoIcons.home,
          backgroundGradient: LinearGradient(
            colors: [Color(0xFFC8876B), Colors.black],
          ),
        ),
        NavigationBarButton(
          text: 'Favorite',
          icon: CupertinoIcons.heart,
          backgroundGradient: LinearGradient(
            colors: [Color(0xFFC8876B), Colors.black],
          ),
        ),
        NavigationBarButton(
          text: 'Profile',
          icon: CupertinoIcons.profile_circled,
          backgroundGradient: LinearGradient(
            colors: [Color(0xFFC8876B), Colors.black],
          ),
        ),
      ],
    );
  }
}
