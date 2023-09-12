import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../domain/model/gathering/gathering_category.dart';
import '../../utils/constants/strings.dart';

part 'gathering_api_service.g.dart';

@RestApi(baseUrl: baseUrl, parser: Parser.MapSerializable)
abstract class GatheringApiService {
  factory GatheringApiService(Dio dio, {String baseUrl}) = _GatheringApiService;

  @GET('/v2/group/categories')
  Future<HttpResponse<List<GatheringCategory>>> getGatheringCategories();
}
