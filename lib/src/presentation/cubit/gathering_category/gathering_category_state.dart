import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_kookminpt_sample/src/domain/model/gathering/gathering_category.dart';

abstract class GatheringState {
  final List<GatheringCategory> gatheringCategories;
  final DioException? error;

  const GatheringState({
    this.gatheringCategories = const [],
    this.error,
  });

  @override
  List<Object?> get props => [gatheringCategories, error];
}

class RemoteGatheringLoading extends GatheringState {
  const RemoteGatheringLoading();
}

class RemoteGatheringSuccess extends GatheringState {
  const RemoteGatheringSuccess({super.gatheringCategories});
}

class RemoteGatheringFailed extends GatheringState {
  const RemoteGatheringFailed({super.error});
}
