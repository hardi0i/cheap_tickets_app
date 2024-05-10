// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'cheap_tickets_router.dart';

abstract class _$CheapTicketsRouter extends RootStackRouter {
  // ignore: unused_element
  _$CheapTicketsRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AirTicketsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AirTicketsScreen(),
      );
    },
    ArrivalChosenRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ArrivalChosenScreen(),
      );
    },
    DummyRoute.name: (routeData) {
      final args = routeData.argsAs<DummyRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DummyScreen(
          key: args.key,
          title: args.title,
        ),
      );
    },
    DummyRoute2.name: (routeData) {
      final args = routeData.argsAs<DummyRoute2Args>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DummyScreen2(
          key: args.key,
          title: args.title,
        ),
      );
    },
    EmptyRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    HomePage.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    TicketsRoute.name: (routeData) {
      final args = routeData.argsAs<TicketsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: TicketsScreen(
          key: args.key,
          travelDatesCubit: args.travelDatesCubit,
        ),
      );
    },
  };
}

/// generated route for
/// [AirTicketsScreen]
class AirTicketsRoute extends PageRouteInfo<void> {
  const AirTicketsRoute({List<PageRouteInfo>? children})
      : super(
          AirTicketsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AirTicketsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ArrivalChosenScreen]
class ArrivalChosenRoute extends PageRouteInfo<void> {
  const ArrivalChosenRoute({List<PageRouteInfo>? children})
      : super(
          ArrivalChosenRoute.name,
          initialChildren: children,
        );

  static const String name = 'ArrivalChosenRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DummyScreen]
class DummyRoute extends PageRouteInfo<DummyRouteArgs> {
  DummyRoute({
    Key? key,
    required String title,
    List<PageRouteInfo>? children,
  }) : super(
          DummyRoute.name,
          args: DummyRouteArgs(
            key: key,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'DummyRoute';

  static const PageInfo<DummyRouteArgs> page = PageInfo<DummyRouteArgs>(name);
}

class DummyRouteArgs {
  const DummyRouteArgs({
    this.key,
    required this.title,
  });

  final Key? key;

  final String title;

  @override
  String toString() {
    return 'DummyRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [DummyScreen2]
class DummyRoute2 extends PageRouteInfo<DummyRoute2Args> {
  DummyRoute2({
    Key? key,
    required String title,
    List<PageRouteInfo>? children,
  }) : super(
          DummyRoute2.name,
          args: DummyRoute2Args(
            key: key,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'DummyRoute2';

  static const PageInfo<DummyRoute2Args> page = PageInfo<DummyRoute2Args>(name);
}

class DummyRoute2Args {
  const DummyRoute2Args({
    this.key,
    required this.title,
  });

  final Key? key;

  final String title;

  @override
  String toString() {
    return 'DummyRoute2Args{key: $key, title: $title}';
  }
}

/// generated route for
/// [EmptyRouterPage]
class EmptyRouter extends PageRouteInfo<void> {
  const EmptyRouter({List<PageRouteInfo>? children})
      : super(
          EmptyRouter.name,
          initialChildren: children,
        );

  static const String name = 'EmptyRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomePage extends PageRouteInfo<void> {
  const HomePage({List<PageRouteInfo>? children})
      : super(
          HomePage.name,
          initialChildren: children,
        );

  static const String name = 'HomePage';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TicketsScreen]
class TicketsRoute extends PageRouteInfo<TicketsRouteArgs> {
  TicketsRoute({
    Key? key,
    required TravelDatesCubit travelDatesCubit,
    List<PageRouteInfo>? children,
  }) : super(
          TicketsRoute.name,
          args: TicketsRouteArgs(
            key: key,
            travelDatesCubit: travelDatesCubit,
          ),
          initialChildren: children,
        );

  static const String name = 'TicketsRoute';

  static const PageInfo<TicketsRouteArgs> page =
      PageInfo<TicketsRouteArgs>(name);
}

class TicketsRouteArgs {
  const TicketsRouteArgs({
    this.key,
    required this.travelDatesCubit,
  });

  final Key? key;

  final TravelDatesCubit travelDatesCubit;

  @override
  String toString() {
    return 'TicketsRouteArgs{key: $key, travelDatesCubit: $travelDatesCubit}';
  }
}
