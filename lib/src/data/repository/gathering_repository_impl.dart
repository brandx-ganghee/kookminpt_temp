import 'package:flutter_kookminpt_sample/src/data/repository/base/base_api_repository.dart';
import 'package:flutter_kookminpt_sample/src/domain/repository/gathering_repository.dart';
import 'package:injectable/injectable.dart';

import '../../domain/model/gathering/gathering_category.dart';
import '../datasource/remote/gathering_api_service.dart';
import '../utils/resources/data_state.dart';

@injectable
class GatheringRepositoryImpl
    extends BaseApiRepository
    implements GatheringRepository {
  final GatheringApiService _gatheringApiService;

  GatheringRepositoryImpl(this._gatheringApiService);

  @override
  Future<DataState<List<GatheringCategory>>> getGatheringCategories() {
    return getStateOf<List<GatheringCategory>>(
      request: () => _gatheringApiService.getGatheringCategories()
    );
  }
}