import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_kookminpt_sample/src/domain/model/gathering/gathering_category.dart';
import 'package:flutter_kookminpt_sample/src/domain/model/gathering/gathering_items.dart';

import '../../../domain/model/gathering/gathering_item.dart';

abstract class GatheringItemsState {
  final GatheringItems? gatheringItems;
  final DioException? error;

  const GatheringItemsState({
    this.gatheringItems,
    this.error,
  });

  @override
  List<Object?> get props => [gatheringItems, error];
}

class RemoteGatheringsLoading extends GatheringItemsState {
  const RemoteGatheringsLoading();
}

class RemoteGatheringsSuccess extends GatheringItemsState {
  const RemoteGatheringsSuccess({super.gatheringItems});
}

class RemoteGatheringsFailed extends GatheringItemsState {
  const RemoteGatheringsFailed({super.error});
}
