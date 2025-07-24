import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/app_color.dart';
import '../../utils/app_text_tyle.dart';
import '../../utils/app_utils.dart';
class TechWidget extends StatelessWidget {
  const TechWidget({
    super.key,
    required this.svgImage,
    required this.text,
  });
  final String svgImage;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: AppUtils.borderRadiusL,
        color: AppColors.gray400,
      ),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            'assets/$svgImage',
            width: 20,
            height: 20,
            semanticsLabel: svgImage,
          ),
          SizedBox(width: 3),
          Text(
            text,
            style: AppTextStyle.textMd,
          ),
        ],
      ),
    );
  }
}
