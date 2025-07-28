import 'package:flutter/material.dart';

import '../../controllers/mocks/stacks_model.dart';
import '../../utils/app_color.dart';
import '../../utils/app_text_tyle.dart';
import '../../utils/app_utils.dart';

class StacksWidget extends StatelessWidget {
  const StacksWidget({super.key, required this.height, required this.maxWidth, required this.stack});

  final double height;
  final double maxWidth;
  final StacksModel stack;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: AppColors.gray400),
        borderRadius: AppUtils.borderRadiusM,
      ),
      padding: EdgeInsets.all(13),
      width: maxWidth * 0.3,
      height: height * 0.225,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: stack.icon,
          ),
          Text(
            stack.title,
            style: AppTextStyle.titleSm,
          ),
          SizedBox(height: 10),
          Text(
            stack.text,
            style: AppTextStyle.textSm,
          ),
        ],
      ),
    );
  }
}
