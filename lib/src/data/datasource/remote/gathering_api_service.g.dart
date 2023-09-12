// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gathering_api_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _GatheringApiService implements GatheringApiService {
  _GatheringApiService(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://dev-api.kookminpt.net';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<HttpResponse<List<GatheringCategory>>> getGatheringCategories() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<List<dynamic>>(
        _setStreamType<HttpResponse<List<GatheringCategory>>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/v2/group/categories',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    var value = _result.data!
        .map(
            (dynamic i) => GatheringCategory.fromMap(i as Map<String, dynamic>))
        .toList();
    final httpResponse = HttpResponse(value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<GatheringItems>> getGatheringItems(
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
    String? onlyTrainer,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'offset': offset,
      r'latitude': latitude,
      r'sort': sort,
      r'groupCategorySeq': gatheringCategory,
      r'groupExerciseList': gatheringExerciseList,
      r'groupRecruitStatus': isRecruitGathering,
      r'groupRegionList': gatheringRegionList,
      r'groupMemberGender': gender,
      r'size': pageSize,
      r'sortType': sortType,
      r'page': page,
      r'longitude': longitude,
      r'groupSeq': gatheringId,
      r'groupMemberMinAge': gatheringMinAge,
      r'groupMemberMaxAge': gatheringMaxAge,
      r'startDate': startDate,
      r'endDate': endDate,
      r'groupMemberOnlyTrainer': onlyTrainer,
    };
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<HttpResponse<GatheringItems>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/v2/groups',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = GatheringItems.fromJson(_result.data!);
    final httpResponse = HttpResponse(value, _result);
    return httpResponse;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
