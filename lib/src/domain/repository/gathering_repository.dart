
import 'package:injectable/injectable.dart';

import '../../data/utils/resources/data_state.dart';
import '../model/gathering/gathering_category.dart';

@injectable
abstract class GatheringRepository {
  Future<DataState<List<GatheringCategory>>> getGatheringCategories();
}
