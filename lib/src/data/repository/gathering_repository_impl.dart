import 'package:flutter_kookminpt_sample/src/data/repository/base/base_api_repository.dart';
import 'package:flutter_kookminpt_sample/src/domain/model/gathering/gathering_items.dart';
import 'package:flutter_kookminpt_sample/src/domain/repository/gathering_repository.dart';
import 'package:injectable/injectable.dart';

import '../../domain/model/gathering/gathering_category.dart';
import '../datasource/remote/gathering_api_service.dart';
import '../utils/resources/data_state.dart';

@injectable
class GatheringRepositoryImpl extends BaseApiRepository
    implements GatheringRepository {
  final GatheringApiService _gatheringApiService;

  GatheringRepositoryImpl(this._gatheringApiService);

  @override
  Future<DataState<List<GatheringCategory>>> getGatheringCategories() {
    return getStateOf<List<GatheringCategory>>(
        request: () => _gatheringApiService.getGatheringCategories());
  }

  @override
  Future<DataState<GatheringItems>> getGatheringItems(
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
      String? onlyTrainer) {
    return getStateOf<GatheringItems>(
        request: () => _gatheringApiService.getGatheringItems(
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
            onlyTrainer));
  }
}
