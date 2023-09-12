import 'package:injectable/injectable.dart';

import '../../data/utils/resources/data_state.dart';
import '../model/gathering/gathering_category.dart';
import '../model/gathering/gathering_items.dart';

@injectable
abstract class GatheringRepository {
  Future<DataState<List<GatheringCategory>>> getGatheringCategories();

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
      String? onlyTrainer);
}
