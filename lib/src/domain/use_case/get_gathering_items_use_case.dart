
import 'package:flutter_kookminpt_sample/src/domain/model/gathering/gathering_items.dart';
import 'package:injectable/injectable.dart';

import '../../data/utils/resources/data_state.dart';
import '../repository/gathering_repository.dart';

@injectable
class GetGatheringItemsUseCase  {
  final GatheringRepository _gatheringRepository;

  GetGatheringItemsUseCase(this._gatheringRepository);

  Future<DataState<GatheringItems>> call(
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
      ) async {
    return await _gatheringRepository.getGatheringItems(
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
        page,
        longitude,
        gatheringId,
        gatheringMinAge,
        gatheringMaxAge,
        startDate,
        endDate,
        onlyTrainer
    );
  }
}