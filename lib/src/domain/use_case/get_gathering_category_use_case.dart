import 'package:flutter_kookminpt_sample/src/data/utils/resources/data_state.dart';
import 'package:flutter_kookminpt_sample/src/domain/repository/gathering_repository.dart';
import 'package:injectable/injectable.dart';

import '../model/gathering/gathering_category.dart';

@injectable
class GetGatheringCategoryUseCase  {
  final GatheringRepository _gatheringRepository;

  GetGatheringCategoryUseCase(this._gatheringRepository);

   Future<DataState<List<GatheringCategory>>> call() async {
     return await _gatheringRepository.getGatheringCategories();
   }
}
