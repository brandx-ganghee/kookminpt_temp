import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_kookminpt_sample/src/domain/model/gathering/gathering_category.dart';

abstract class GatheringCategoryState {
  final List<GatheringCategory> gatheringCategories;
  final DioException? error;

  const GatheringCategoryState({
    this.gatheringCategories = const [],
    this.error,
  });

  @override
  List<Object?> get props => [gatheringCategories, error];
}

class RemoteGatheringCategoryLoading extends GatheringCategoryState {
  const RemoteGatheringCategoryLoading();
}

class RemoteGatheringCategorySuccess extends GatheringCategoryState {
  const RemoteGatheringCategorySuccess({super.gatheringCategories});
}

class RemoteGatheringCategoryFailed extends GatheringCategoryState {
  const RemoteGatheringCategoryFailed({super.error});
}
