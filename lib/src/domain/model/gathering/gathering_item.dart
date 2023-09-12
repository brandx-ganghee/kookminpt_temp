class GatheringItem {
  GatheringItem({
    int? groupSeq,
    String? groupRecruitStatus,
    String? groupRecommendValid,
    String? groupType,
    String? groupChatThreadKey,
    String? groupCategoryTitle,
    int? groupCategorySeq,
    String? exerciseName,
    String? groupTitle,
    int? groupOrder,
    String? groupContent,
    String? si,
    String? gu,
    String? dong,
    int? groupMemberMaximumCount,
    int? groupMemberMinimumAge,
    int? groupMemberMaximumAge,
    String? groupMemberGender,
    String? groupMemberOnlyTrainer,
    String? groupOpenDate,
    String? groupOpenTimeSpecified,
    String? groupRepeatValid,
    int? groupMemberCount,
    int? groupWaitingMemberCount,
    int? groupViewCount,
    int? postCount,
    int? groupLikeCount,
    int? memberSeq,
    String? memberNick,
    String? imagePath,
    String? memberRegion,
    String? regDate,
    String? location,
    String? groupOpenLocation,
    String? groupOpenLocationDetail,
    double? groupOpenLocationLatitude,
    double? groupOpenLocationLongitude,
    String? groupOpenLocationTitle,
    String? groupPrechatOpenValid,
    String? groupFreeEntryValid,
    String? groupAutoApproveValid,
    GroupMedia? groupMedia,
    bool? isLiked,
  }) {
    _groupSeq = groupSeq;
    _groupRecruitStatus = groupRecruitStatus;
    _groupRecommendValid = groupRecommendValid;
    _groupType = groupType;
    _groupChatThreadKey = groupChatThreadKey;
    _groupCategoryTitle = groupCategoryTitle;
    _groupCategorySeq = groupCategorySeq;
    _exerciseName = exerciseName;
    _groupTitle = groupTitle;
    _groupOrder = groupOrder;
    _groupContent = groupContent;
    _si = si;
    _gu = gu;
    _dong = dong;
    _groupMemberMaximumCount = groupMemberMaximumCount;
    _groupMemberMinimumAge = groupMemberMinimumAge;
    _groupMemberMaximumAge = groupMemberMaximumAge;
    _groupMemberGender = groupMemberGender;
    _groupMemberOnlyTrainer = groupMemberOnlyTrainer;
    _groupOpenDate = groupOpenDate;
    _groupOpenTimeSpecified = groupOpenTimeSpecified;
    _groupRepeatValid = groupRepeatValid;
    _groupMemberCount = groupMemberCount;
    _groupWaitingMemberCount = groupWaitingMemberCount;
    _groupViewCount = groupViewCount;
    _postCount = postCount;
    _groupLikeCount = groupLikeCount;
    _memberSeq = memberSeq;
    _memberNick = memberNick;
    _imagePath = imagePath;
    _memberRegion = memberRegion;
    _regDate = regDate;
    _location = location;
    _groupOpenLocation = groupOpenLocation;
    _groupOpenLocationDetail = groupOpenLocationDetail;
    _groupOpenLocationLatitude = groupOpenLocationLatitude;
    _groupOpenLocationLongitude = groupOpenLocationLongitude;
    _groupOpenLocationTitle = groupOpenLocationTitle;
    _groupPrechatOpenValid = groupPrechatOpenValid;
    _groupFreeEntryValid = groupFreeEntryValid;
    _groupAutoApproveValid = groupAutoApproveValid;
    _groupMedia = groupMedia;
    _isLiked = isLiked;
  }

  GatheringItem.fromJson(dynamic json) {
    _groupSeq = json['groupSeq'];
    _groupRecruitStatus = json['groupRecruitStatus'];
    _groupRecommendValid = json['groupRecommendValid'];
    _groupType = json['groupType'];
    _groupChatThreadKey = json['groupChatThreadKey'];
    _groupCategoryTitle = json['groupCategoryTitle'];
    _groupCategorySeq = json['groupCategorySeq'];
    _exerciseName = json['exerciseName'];
    _groupTitle = json['groupTitle'];
    _groupOrder = json['groupOrder'];
    _groupContent = json['groupContent'];
    _si = json['si'];
    _gu = json['gu'];
    _dong = json['dong'];
    _groupMemberMaximumCount = json['groupMemberMaximumCount'];
    _groupMemberMinimumAge = json['groupMemberMinimumAge'];
    _groupMemberMaximumAge = json['groupMemberMaximumAge'];
    _groupMemberGender = json['groupMemberGender'];
    _groupMemberOnlyTrainer = json['groupMemberOnlyTrainer'];
    _groupOpenDate = json['groupOpenDate'];
    _groupOpenTimeSpecified = json['groupOpenTimeSpecified'];
    _groupRepeatValid = json['groupRepeatValid'];
    _groupMemberCount = json['groupMemberCount'];
    _groupWaitingMemberCount = json['groupWaitingMemberCount'];
    _groupViewCount = json['groupViewCount'];
    _postCount = json['postCount'];
    _groupLikeCount = json['groupLikeCount'];
    _memberSeq = json['memberSeq'];
    _memberNick = json['memberNick'];
    _imagePath = json['imagePath'];
    _memberRegion = json['memberRegion'];
    _regDate = json['regDate'];
    _location = json['location'];
    _groupOpenLocation = json['groupOpenLocation'];
    _groupOpenLocationDetail = json['groupOpenLocationDetail'];
    _groupOpenLocationLatitude = json['groupOpenLocationLatitude'];
    _groupOpenLocationLongitude = json['groupOpenLocationLongitude'];
    _groupOpenLocationTitle = json['groupOpenLocationTitle'];
    _groupPrechatOpenValid = json['groupPrechatOpenValid'];
    _groupFreeEntryValid = json['groupFreeEntryValid'];
    _groupAutoApproveValid = json['groupAutoApproveValid'];
    _groupMedia = json['groupMedia'] != null
        ? GroupMedia.fromJson(json['groupMedia'])
        : null;
    _isLiked = json['isLiked'];
  }

  int? _groupSeq;
  String? _groupRecruitStatus;
  String? _groupRecommendValid;
  String? _groupType;
  String? _groupChatThreadKey;
  String? _groupCategoryTitle;
  int? _groupCategorySeq;
  String? _exerciseName;
  String? _groupTitle;
  int? _groupOrder;
  String? _groupContent;
  String? _si;
  String? _gu;
  String? _dong;
  int? _groupMemberMaximumCount;
  int? _groupMemberMinimumAge;
  int? _groupMemberMaximumAge;
  String? _groupMemberGender;
  String? _groupMemberOnlyTrainer;
  String? _groupOpenDate;
  String? _groupOpenTimeSpecified;
  String? _groupRepeatValid;
  int? _groupMemberCount;
  int? _groupWaitingMemberCount;
  int? _groupViewCount;
  int? _postCount;
  int? _groupLikeCount;
  int? _memberSeq;
  String? _memberNick;
  String? _imagePath;
  String? _memberRegion;
  String? _regDate;
  String? _location;
  String? _groupOpenLocation;
  String? _groupOpenLocationDetail;
  double? _groupOpenLocationLatitude;
  double? _groupOpenLocationLongitude;
  String? _groupOpenLocationTitle;
  String? _groupPrechatOpenValid;
  String? _groupFreeEntryValid;
  String? _groupAutoApproveValid;
  GroupMedia? _groupMedia;
  bool? _isLiked;
  int? get groupSeq => _groupSeq;
  String? get groupRecruitStatus => _groupRecruitStatus;
  String? get groupRecommendValid => _groupRecommendValid;
  String? get groupType => _groupType;
  String? get groupChatThreadKey => _groupChatThreadKey;
  String? get groupCategoryTitle => _groupCategoryTitle;
  int? get groupCategorySeq => _groupCategorySeq;
  String? get exerciseName => _exerciseName;
  String? get groupTitle => _groupTitle;
  int? get groupOrder => _groupOrder;
  String? get groupContent => _groupContent;
  String? get si => _si;
  String? get gu => _gu;
  String? get dong => _dong;
  int? get groupMemberMaximumCount => _groupMemberMaximumCount;
  int? get groupMemberMinimumAge => _groupMemberMinimumAge;
  int? get groupMemberMaximumAge => _groupMemberMaximumAge;
  String? get groupMemberGender => _groupMemberGender;
  String? get groupMemberOnlyTrainer => _groupMemberOnlyTrainer;
  String? get groupOpenDate => _groupOpenDate;
  String? get groupOpenTimeSpecified => _groupOpenTimeSpecified;
  String? get groupRepeatValid => _groupRepeatValid;
  int? get groupMemberCount => _groupMemberCount;
  int? get groupWaitingMemberCount => _groupWaitingMemberCount;
  int? get groupViewCount => _groupViewCount;
  int? get postCount => _postCount;
  int? get groupLikeCount => _groupLikeCount;
  int? get memberSeq => _memberSeq;
  String? get memberNick => _memberNick;
  String? get imagePath => _imagePath;
  String? get memberRegion => _memberRegion;
  String? get regDate => _regDate;
  String? get location => _location;
  String? get groupOpenLocation => _groupOpenLocation;
  String? get groupOpenLocationDetail => _groupOpenLocationDetail;
  double? get groupOpenLocationLatitude => _groupOpenLocationLatitude;
  double? get groupOpenLocationLongitude => _groupOpenLocationLongitude;
  String? get groupOpenLocationTitle => _groupOpenLocationTitle;
  String? get groupPrechatOpenValid => _groupPrechatOpenValid;
  String? get groupFreeEntryValid => _groupFreeEntryValid;
  String? get groupAutoApproveValid => _groupAutoApproveValid;
  GroupMedia? get groupMedia => _groupMedia;
  bool? get isLiked => _isLiked;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['groupSeq'] = _groupSeq;
    map['groupRecruitStatus'] = _groupRecruitStatus;
    map['groupRecommendValid'] = _groupRecommendValid;
    map['groupType'] = _groupType;
    map['groupChatThreadKey'] = _groupChatThreadKey;
    map['groupCategoryTitle'] = _groupCategoryTitle;
    map['groupCategorySeq'] = _groupCategorySeq;
    map['exerciseName'] = _exerciseName;
    map['groupTitle'] = _groupTitle;
    map['groupOrder'] = _groupOrder;
    map['groupContent'] = _groupContent;
    map['si'] = _si;
    map['gu'] = _gu;
    map['dong'] = _dong;
    map['groupMemberMaximumCount'] = _groupMemberMaximumCount;
    map['groupMemberMinimumAge'] = _groupMemberMinimumAge;
    map['groupMemberMaximumAge'] = _groupMemberMaximumAge;
    map['groupMemberGender'] = _groupMemberGender;
    map['groupMemberOnlyTrainer'] = _groupMemberOnlyTrainer;
    map['groupOpenDate'] = _groupOpenDate;
    map['groupOpenTimeSpecified'] = _groupOpenTimeSpecified;
    map['groupRepeatValid'] = _groupRepeatValid;
    map['groupMemberCount'] = _groupMemberCount;
    map['groupWaitingMemberCount'] = _groupWaitingMemberCount;
    map['groupViewCount'] = _groupViewCount;
    map['postCount'] = _postCount;
    map['groupLikeCount'] = _groupLikeCount;
    map['memberSeq'] = _memberSeq;
    map['memberNick'] = _memberNick;
    map['imagePath'] = _imagePath;
    map['memberRegion'] = _memberRegion;
    map['regDate'] = _regDate;
    map['location'] = _location;
    map['groupOpenLocation'] = _groupOpenLocation;
    map['groupOpenLocationDetail'] = _groupOpenLocationDetail;
    map['groupOpenLocationLatitude'] = _groupOpenLocationLatitude;
    map['groupOpenLocationLongitude'] = _groupOpenLocationLongitude;
    map['groupOpenLocationTitle'] = _groupOpenLocationTitle;
    map['groupPrechatOpenValid'] = _groupPrechatOpenValid;
    map['groupFreeEntryValid'] = _groupFreeEntryValid;
    map['groupAutoApproveValid'] = _groupAutoApproveValid;
    if (_groupMedia != null) {
      map['groupMedia'] = _groupMedia?.toJson();
    }
    map['isLiked'] = _isLiked;
    return map;
  }
}

class GroupMedia {
  GroupMedia({
    String? groupCoverImageUrl,
    List<GroupMediaList>? groupMediaList,
  }) {
    _groupCoverImageUrl = groupCoverImageUrl;
    _groupMediaList = groupMediaList;
  }

  GroupMedia.fromJson(dynamic json) {
    _groupCoverImageUrl = json['groupCoverImageUrl'];
    if (json['groupMediaList'] != null) {
      _groupMediaList = [];
      json['groupMediaList'].forEach((v) {
        _groupMediaList?.add(GroupMediaList.fromJson(v));
      });
    }
  }

  String? _groupCoverImageUrl;
  List<GroupMediaList>? _groupMediaList;

  String? get groupCoverImageUrl => _groupCoverImageUrl;

  List<GroupMediaList>? get groupMediaList => _groupMediaList;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['groupCoverImageUrl'] = _groupCoverImageUrl;
    if (_groupMediaList != null) {
      map['groupMediaList'] = _groupMediaList?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class GroupMediaList {
  GroupMediaList({
    int? groupMediaSeq,
    String? groupMediaUrl,
    String? groupMediaType,
  }) {
    _groupMediaSeq = groupMediaSeq;
    _groupMediaUrl = groupMediaUrl;
    _groupMediaType = groupMediaType;
  }

  GroupMediaList.fromJson(dynamic json) {
    _groupMediaSeq = json['groupMediaSeq'];
    _groupMediaUrl = json['groupMediaUrl'];
    _groupMediaType = json['groupMediaType'];
  }

  int? _groupMediaSeq;
  String? _groupMediaUrl;
  String? _groupMediaType;

  int? get groupMediaSeq => _groupMediaSeq;

  String? get groupMediaUrl => _groupMediaUrl;

  String? get groupMediaType => _groupMediaType;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['groupMediaSeq'] = _groupMediaSeq;
    map['groupMediaUrl'] = _groupMediaUrl;
    map['groupMediaType'] = _groupMediaType;
    return map;
  }
}
