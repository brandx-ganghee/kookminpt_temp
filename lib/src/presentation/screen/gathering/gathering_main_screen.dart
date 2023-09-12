import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_kookminpt_sample/src/presentation/cubit/gathering_category/gathering_category_state.dart';
import 'package:flutter_kookminpt_sample/src/theme/colors.dart';
import 'package:flutter_kookminpt_sample/src/theme/text_style.dart';
import 'package:flutter_svg/svg.dart';

import '../../../domain/model/gathering/gathering_category.dart';
import '../../cubit/gathering_category/gathering_category_cubit.dart';

@RoutePage()
class GatheringMainScreen extends StatelessWidget {
  const GatheringMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('운동모임')),
      body: BlocBuilder<GatheringCubit, GatheringState>(
        builder: (_, state) {
          switch (state.runtimeType) {
            case RemoteGatheringLoading:
              return const Center(child: CupertinoActivityIndicator());
            case RemoteGatheringFailed:
              return const Center(child: Icon(Icons.refresh));
            case RemoteGatheringSuccess:
              return _gatheringView(state.gatheringCategories);
            default:
              return const SizedBox();
          }
        },
      ),
    );
  }

  Widget _gatheringView(List<GatheringCategory> categories) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: _categoryList(categories)),
        const SliverToBoxAdapter(child: SizedBox(height: 24)),
        SliverToBoxAdapter(child: _filterView()),
      ],
    );
  }

  Widget _categoryList(List<GatheringCategory> categories) {
    return SizedBox(
      height: 92,
      child: CustomScrollView(
        scrollDirection: Axis.horizontal,
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.only(left: 20),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => GestureDetector(
                  onTap: () => {
                    //todo: category click event
                    print('click')
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 4),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Ink(
                            decoration: const ShapeDecoration(
                                shape: CircleBorder(),
                                color: KookminColors.gray50),
                            width: 52,
                            height: 52,
                            padding: const EdgeInsets.all(11),
                            child: SvgPicture.network(
                                categories[index].groupCategoryIconUrl),
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          categories[index].groupCategoryTitle,
                          style: KookminTextStyle.labelRegular,
                        ),
                      ],
                    ),
                  ),
                ),
                childCount: categories.length,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _filterView() {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => {
              // todo: filter click
              print('필터 클릭 이벤트')
            },
            child: Row(
              children: [
                SvgPicture.asset("assets/icons/ic_filter.svg"),
                const SizedBox(width: 4),
                const Text(
                  "필터",
                  style: KookminTextStyle.subtitle3,
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () => {
              // todo: sort click
              print('정렬 클릭 이벤트')
            },
            child: Row(
              children: [
                const Text(
                  "최신순",
                  style: KookminTextStyle.subtitle3,
                ),
                const SizedBox(width: 4),
                SvgPicture.asset("assets/icons/ic_sort.svg")
              ],
            ),
          )
        ],
      ),
    );
  }
}
