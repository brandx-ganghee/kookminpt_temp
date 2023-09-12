import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../data/utils/resources/data_state.dart';
import '../../../domain/use_case/get_gathering_items_use_case.dart';
import 'gathering_items_state.dart';

@injectable
class GatheringItemsCubit extends Cubit<GatheringItemsState> {
  final GetGatheringItemsUseCase _getGatheringItemsUseCase;

  GatheringItemsCubit(this._getGatheringItemsUseCase)
      : super(const RemoteGatheringsLoading());

  int _page = 1;

  Future<void> getGatheringItems({
    int? offset,
    double? latitude,
    String? sort,
    int? gatheringCategory,
    String? gatheringExerciseList,
    String? isRecruitGathering,
    String? gatheringRegionList,
    String? gender,
    int? pageSize,
    String? sortType,
    int? page,
    double? longitude,
    int? gatheringId,
    int? gatheringMinAge,
    int? gatheringMaxAge,
    String? startDate,
    String? endDate,
    String? onlyTrainer
  }) async {
    final gatheringItemsState = await _getGatheringItemsUseCase(
      offset,
      latitude,
      sort,
      gatheringCategory,
      gatheringExerciseList,
      isRecruitGathering,
      gatheringRegionList,
      gender,
      pageSize,
      sortType,
      _page,
      longitude,
      gatheringId,
      gatheringMinAge,
      gatheringMaxAge,
      startDate,
      endDate,
      onlyTrainer,
    );

    if (gatheringItemsState is DataSuccess) {
      final categories = gatheringItemsState.data!;
      emit(RemoteGatheringsSuccess(gatheringItems: categories));
    } else if (gatheringItemsState is DataFailed) {
      emit(RemoteGatheringsFailed(error: gatheringItemsState.error));
    }
  }
}
