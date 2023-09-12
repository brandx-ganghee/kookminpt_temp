import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_kookminpt_sample/src/domain/repository/gathering_repository.dart';
import 'package:flutter_kookminpt_sample/src/locator.dart';
import 'package:flutter_kookminpt_sample/src/presentation/cubit/gathering_category/gathering_category_cubit.dart';
import 'package:flutter_kookminpt_sample/src/theme/colors.dart';

import '../../config/router/app_router.dart';
import '../../config/router/gathering/gathering_router.dart';
import '../../domain/use_case/get_gathering_category_use_case.dart';
import '../../theme/theme.dart';

@RoutePage()
class GatheringScreen extends StatelessWidget {
  const GatheringScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => GatheringCubit(
            locator<GetGatheringCategoryUseCase>(),
          )..getGatheringCategories(),
        )
      ],
      child: MaterialApp.router(
        routerConfig: gatheringRouter.config(),
        theme: AppTheme.light,
      ),
    );
  }
}
