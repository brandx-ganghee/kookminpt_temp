import 'package:equatable/equatable.dart';

class GatheringCategory extends Equatable {
  final int groupCategorySeq;
  final String groupCategoryTitle;
  final String groupCategoryDescription;
  final String groupCategoryIconUrl;
  final String groupCoverImageUrl;

  const GatheringCategory({
    required this.groupCategorySeq,
    required this.groupCategoryTitle,
    required this.groupCategoryDescription,
    required this.groupCategoryIconUrl,
    required this.groupCoverImageUrl,
  });

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [groupCategorySeq, groupCategoryTitle, groupCategoryDescription, groupCategoryIconUrl, groupCoverImageUrl];

  factory GatheringCategory.fromMap(Map<String, dynamic> map) {
    return GatheringCategory(
      groupCategorySeq: (map['groupCategorySeq'] ?? '') as int,
      groupCategoryTitle: (map['groupCategoryTitle'] ?? '') as String,
      groupCategoryDescription: (map['groupCategoryDescription'] ?? '') as String,
      groupCategoryIconUrl: (map['groupCategoryIconUrl'] ?? '') as String,
      groupCoverImageUrl: (map['groupCoverImageUrl'] ?? '') as String,
    );
  }
}