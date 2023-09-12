import 'package:auto_route/auto_route.dart';

import '../../../presentation/screen/center_screen.dart';
import '../../../presentation/screen/container_screen.dart';
import '../../../presentation/screen/gathering/gathering_main_screen.dart';
import '../../../presentation/screen/home_screen.dart';
import '../../../presentation/screen/my_screen.dart';
import '../../../presentation/screen/store_screen.dart';
import '../../../presentation/screen/trainer_screen.dart';

part 'gathering_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Router')
class GatheringRouter extends _$GatheringRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: GatheringMainRouter.page, initial: true),
      ];
}

final gatheringRouter = GatheringRouter();
