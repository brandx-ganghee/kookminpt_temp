import 'package:awesome_dio_interceptor/awesome_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter_kookminpt_sample/src/data/datasource/remote/gathering_api_service.dart';
import 'package:flutter_kookminpt_sample/src/data/repository/gathering_repository_impl.dart';
import 'package:flutter_kookminpt_sample/src/domain/repository/gathering_repository.dart';
import 'package:flutter_kookminpt_sample/src/domain/use_case/get_gathering_category_use_case.dart';
import 'package:flutter_kookminpt_sample/src/presentation/cubit/gathering_category/gathering_category_cubit.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

Future<void> initializeDependencies() async {
  final dio = Dio();

  dio.interceptors.add(AwesomeDioInterceptor());

  locator.registerSingleton<Dio>(dio);

  locator.registerSingleton<GatheringApiService>(
    GatheringApiService(locator<Dio>()),
  );
  locator.registerSingleton<GatheringRepository>(
    GatheringRepositoryImpl(locator<GatheringApiService>()),
  );

  locator.registerLazySingleton(() => GetGatheringCategoryUseCase(locator()));
}
