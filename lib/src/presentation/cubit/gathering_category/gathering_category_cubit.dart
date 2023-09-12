import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_kookminpt_sample/src/data/utils/resources/data_state.dart';
import 'package:flutter_kookminpt_sample/src/domain/repository/gathering_repository.dart';
import 'package:flutter_kookminpt_sample/src/presentation/cubit/gathering_category/gathering_category_state.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/use_case/get_gathering_category_use_case.dart';

@injectable
class GatheringCubit extends Cubit<GatheringState> {
  final GetGatheringCategoryUseCase _getGatheringCategoryUseCase;

  GatheringCubit(this._getGatheringCategoryUseCase)
      : super(const RemoteGatheringLoading());

  Future<void> getGatheringCategories() async {
    final categoriesState = await _getGatheringCategoryUseCase();

    if (categoriesState is DataSuccess) {
      final categories = categoriesState.data!;
      emit(RemoteGatheringSuccess(gatheringCategories: categories));
    } else if (categoriesState is DataFailed) {
      emit(RemoteGatheringFailed(error: categoriesState.error));
    }
  }
}
