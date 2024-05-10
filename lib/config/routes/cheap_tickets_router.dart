import 'package:auto_route/auto_route.dart';
import 'package:cheap_tickets_app/features/air_tickets/presentation/pages/air_tickets_screen.dart';
import 'package:cheap_tickets_app/features/all_available_tickets/presentation/pages/tickets_screen.dart';
import 'package:cheap_tickets_app/features/arrival_chosen/presentation/cubit/travel_dates/travel_dates_cubit.dart';
import 'package:cheap_tickets_app/features/arrival_chosen/presentation/pages/arrival_chosen_screen.dart';
import 'package:cheap_tickets_app/features/home/pages/home_page.dart';
import 'package:cheap_tickets_app/features/views/dummy_screen.dart';
import 'package:cheap_tickets_app/features/views/dummy_screen2.dart';
import 'package:cheap_tickets_app/features/views/empty_screen.dart';
import 'package:flutter/material.dart';

part 'cheap_tickets_router.gr.dart';

@AutoRouterConfig()
class CheapTicketsRouter extends _$CheapTicketsRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: HomePage.page,
          children: [
            AutoRoute(
              path: 'air-tickets',
              page: EmptyRouter.page,
              children: [
                AutoRoute(
                  path: '',
                  initial: true,
                  page: AirTicketsRoute.page,
                ),
                AutoRoute(
                  path: 'dummy-route2',
                  page: DummyRoute2.page,
                ),
                AutoRoute(
                  path: 'arrival-chosen',
                  page: ArrivalChosenRoute.page,
                ),
                AutoRoute(
                  path: 'tickets',
                  page: TicketsRoute.page,
                ),
              ],
            ),
            AutoRoute(
              path: 'hotels',
              page: DummyRoute.page,
            ),
            AutoRoute(
              path: 'briefly',
              page: DummyRoute.page,
            ),
            AutoRoute(
              path: 'subscriptons',
              page: DummyRoute.page,
            ),
            AutoRoute(
              path: 'profile',
              page: DummyRoute.page,
            ),
          ],
        )
      ];
}
