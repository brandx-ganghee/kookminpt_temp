import 'package:flutter_kookminpt_sample/src/domain/model/gathering/gathering_item.dart';

class GatheringItems {
  GatheringItems({
    int? totalCount,
    int? size,
    int? offset,
    String? orders,
    int? page,
    List<GatheringItem>? pageRows,
  }) {
    _totalCount = totalCount;
    _size = size;
    _offset = offset;
    _orders = orders;
    _page = page;
    _pageRows = pageRows;
  }

  GatheringItems.fromJson(dynamic json) {
    _totalCount = json['totalCount'];
    _size = json['size'];
    _offset = json['offset'];
    _orders = json['orders'];
    _page = json['page'];
    if (json['pageRows'] != null) {
      _pageRows = [];
      json['pageRows'].forEach((v) {
        _pageRows?.add(GatheringItem.fromJson(v));
      });
    }
  }

  int? _totalCount;
  int? _size;
  int? _offset;
  String? _orders;
  int? _page;
  List<GatheringItem>? _pageRows;

  int? get totalCount => _totalCount;

  int? get size => _size;

  int? get offset => _offset;

  String? get orders => _orders;

  int? get page => _page;

  List<GatheringItem>? get pageRows => _pageRows;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['totalCount'] = _totalCount;
    map['size'] = _size;
    map['offset'] = _offset;
    map['orders'] = _orders;
    map['page'] = _page;
    if (_pageRows != null) {
      map['pageRows'] = _pageRows?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
