import 'package:flutter/material.dart';

import '../../controllers/mocks/social_media_model.dart';
import '../../utils/app_color.dart';
import '../../utils/app_text_tyle.dart';
import '../../utils/app_utils.dart';

class SocialMediaWidget extends StatelessWidget {
  const SocialMediaWidget({
    super.key,
    required this.width,
    required this.i,
  });

  final double width;
  final int i;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(color: AppColors.gray400, borderRadius: AppUtils.borderRadiusM),
      width: width * 0.4,
      child: Row(
        children: [
          Image.asset(listSocialMedia[i].iconPath),
          SizedBox(width: 20),
          Text(listSocialMedia[i].text, style: AppTextStyle.textMd),
          Spacer(),
          Icon(
            Icons.chevron_right,
            color: AppColors.gray300,
          ),
        ],
      ),
    );
  }
}
