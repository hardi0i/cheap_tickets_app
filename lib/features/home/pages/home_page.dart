import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import 'package:cheap_tickets_app/config/routes/cheap_tickets_router.dart';
import 'package:cheap_tickets_app/features/home/widgets/custom_bottom_navigation.dart';

@RoutePage(name: 'HomePage')
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: [
        const AirTicketsRoute(),
        DummyRoute(title: 'Отели'),
        DummyRoute(title: 'Короче'),
        DummyRoute(title: 'Подписки'),
        DummyRoute(title: 'Профиль'),
      ],
      transitionBuilder: (context, child, animation) => FadeTransition(
        opacity: animation,
        child: child,
      ),
      builder: (_, child) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: child,
          bottomNavigationBar: const CustomBottomNavigation(),
        );
      },
    );
  }
}
