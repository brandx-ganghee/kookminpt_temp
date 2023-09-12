import 'package:auto_route/auto_route.dart';
import 'package:flutter_kookminpt_sample/src/presentation/screen/container_screen.dart';
import 'package:flutter_kookminpt_sample/src/presentation/screen/my_screen.dart';
import 'package:flutter_kookminpt_sample/src/presentation/screen/my_screen.dart';
import 'package:flutter_kookminpt_sample/src/presentation/screen/my_screen.dart';
import 'package:flutter_kookminpt_sample/src/presentation/screen/my_screen.dart';
import 'package:flutter_kookminpt_sample/src/presentation/screen/my_screen.dart';
import 'package:flutter_kookminpt_sample/src/presentation/screen/my_screen.dart';

import '../../presentation/screen/center_screen.dart';
import '../../presentation/screen/gathering/gathering_main_screen.dart';
import '../../presentation/screen/gathering_screen.dart';
import '../../presentation/screen/home_screen.dart';
import '../../presentation/screen/store_screen.dart';
import '../../presentation/screen/trainer_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Router')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
            page: ContainerRouter.page,
            children: containerRoutes,
            initial: true),
      ];

  List<AutoRoute> get containerRoutes => [
        AutoRoute(page: HomeRouter.page, initial: true),
        AutoRoute(page: GatheringRouter.page),
        AutoRoute(page: TrainerRouter.page),
        AutoRoute(page: CenterRouter.page),
        AutoRoute(page: StoreRouter.page),
        AutoRoute(page: MyRouter.page)
      ];
}

final appRouter = AppRouter();