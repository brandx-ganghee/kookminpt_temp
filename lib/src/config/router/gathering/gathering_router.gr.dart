// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'gathering_router.dart';

abstract class _$GatheringRouter extends RootStackRouter {
  // ignore: unused_element
  _$GatheringRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CenterRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CenterScreen(),
      );
    },
    ContainerRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ContainerScreen(),
      );
    },
    GatheringMainRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const GatheringMainScreen(),
      );
    },
    HomeRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    MyRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MyScreen(),
      );
    },
    StoreRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const StoreScreen(),
      );
    },
    TrainerRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TrainerScreen(),
      );
    },
  };
}

/// generated route for
/// [CenterScreen]
class CenterRouter extends PageRouteInfo<void> {
  const CenterRouter({List<PageRouteInfo>? children})
      : super(
          CenterRouter.name,
          initialChildren: children,
        );

  static const String name = 'CenterRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ContainerScreen]
class ContainerRouter extends PageRouteInfo<void> {
  const ContainerRouter({List<PageRouteInfo>? children})
      : super(
          ContainerRouter.name,
          initialChildren: children,
        );

  static const String name = 'ContainerRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [GatheringMainScreen]
class GatheringMainRouter extends PageRouteInfo<void> {
  const GatheringMainRouter({List<PageRouteInfo>? children})
      : super(
          GatheringMainRouter.name,
          initialChildren: children,
        );

  static const String name = 'GatheringMainRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeRouter extends PageRouteInfo<void> {
  const HomeRouter({List<PageRouteInfo>? children})
      : super(
          HomeRouter.name,
          initialChildren: children,
        );

  static const String name = 'HomeRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MyScreen]
class MyRouter extends PageRouteInfo<void> {
  const MyRouter({List<PageRouteInfo>? children})
      : super(
          MyRouter.name,
          initialChildren: children,
        );

  static const String name = 'MyRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [StoreScreen]
class StoreRouter extends PageRouteInfo<void> {
  const StoreRouter({List<PageRouteInfo>? children})
      : super(
          StoreRouter.name,
          initialChildren: children,
        );

  static const String name = 'StoreRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TrainerScreen]
class TrainerRouter extends PageRouteInfo<void> {
  const TrainerRouter({List<PageRouteInfo>? children})
      : super(
          TrainerRouter.name,
          initialChildren: children,
        );

  static const String name = 'TrainerRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}
