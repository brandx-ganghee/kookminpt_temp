import 'package:flutter/widgets.dart';

import '../../../domain/model/gathering/gathering_item.dart';
import '../../../theme/text_style.dart';

class GatheringItemView extends StatelessWidget {
  const GatheringItemView({Key? key, required this.gatheringItem})
      : super(key: key);

  final GatheringItem gatheringItem;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildGatheringImage(),
        const SizedBox(width: 12),
        Flexible(
          child: Text(gatheringItem.groupTitle ?? '',
              style: KookminTextStyle.bodyL,
              overflow: TextOverflow.ellipsis),
        ),
      ],
    );
  }

  Widget _buildGatheringImage() {
    return SizedBox(
      width: 91,
      height: 105,
      child: Image.network(
        gatheringItem.imagePath ?? '',
        fit: BoxFit.cover,
        alignment: Alignment.topCenter,
      ),
    );
  }
}
