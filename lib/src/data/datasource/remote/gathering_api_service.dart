import 'package:dio/dio.dart';
import 'package:flutter_kookminpt_sample/src/domain/model/gathering/gathering_items.dart';
import 'package:retrofit/retrofit.dart';

import '../../../domain/model/gathering/gathering_category.dart';
import '../../utils/constants/strings.dart';

part 'gathering_api_service.g.dart';

@RestApi(baseUrl: baseUrl, parser: Parser.MapSerializable)
abstract class GatheringApiService {
  factory GatheringApiService(Dio dio, {String baseUrl}) = _GatheringApiService;

  /// 운동모임 카테고리 조회
  @GET('/v2/group/categories')
  Future<HttpResponse<List<GatheringCategory>>> getGatheringCategories();

  /// 운동모임 목록 조회
  @GET('/v2/groups')
  Future<HttpResponse<GatheringItems>> getGatheringItems(
      @Query("offset") int? offset,
      @Query("latitude") double? latitude,
      @Query("sort") String? sort,
      @Query("groupCategorySeq") int? gatheringCategory,
      @Query("groupExerciseList") String? gatheringExerciseList,
      @Query("groupRecruitStatus") String? isRecruitGathering,
      @Query("groupRegionList") String? gatheringRegionList,
      @Query("groupMemberGender") String? gender,
      @Query("size") int? pageSize,
      @Query("sortType") String? sortType,
      @Query("page") int? page,
      @Query("longitude") double? longitude,
      @Query("groupSeq") int? gatheringId,
      @Query("groupMemberMinAge") int? gatheringMinAge,
      @Query("groupMemberMaxAge") int? gatheringMaxAge,
      @Query("startDate") String? startDate,
      @Query("endDate") String? endDate,
      @Query("groupMemberOnlyTrainer") String? onlyTrainer);
}
