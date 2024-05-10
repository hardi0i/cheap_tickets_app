import 'package:cheap_tickets_app/config/theme/theme_extensions.dart';
import 'package:cheap_tickets_app/core/enums/bottom_navigation_items.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavigation extends StatefulWidget {
  const CustomBottomNavigation({super.key});

  @override
  State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  @override
  Widget build(BuildContext context) {
    final tabsRouter = AutoTabsRouter.of(context);
    final typography = context.typography;
    final palette = context.palette;

    return BottomNavigationBar(
      showUnselectedLabels: true,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: palette.unselectedColor,
      selectedItemColor: palette.selectedColor,
      selectedLabelStyle: typography.tabText,
      unselectedLabelStyle: typography.tabText,
      backgroundColor: palette.backgroundColor,
      currentIndex: tabsRouter.activeIndex,
      onTap: (index) {
        tabsRouter.setActiveIndex(index);
        setState(() {});
      },
      items: BottomNavigationItems.values
          .map(
            (item) => BottomNavigationBarItem(
              label: item.label,
              activeIcon: Padding(
                padding: const EdgeInsets.only(
                  bottom: 8,
                ),
                child: SvgPicture.asset(
                  item.assetPath,
                  height: 16,
                  colorFilter: ColorFilter.mode(
                    palette.selectedColor,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              icon: Padding(
                padding: const EdgeInsets.only(
                  bottom: 8,
                ),
                child: SvgPicture.asset(
                  item.assetPath,
                  height: 16,
                  colorFilter: ColorFilter.mode(
                    palette.unselectedIconColor,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
