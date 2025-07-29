import 'package:flutter/material.dart';

import '../../controllers/mocks/stacks_model.dart';
import '../../utils/app_color.dart';
import '../../utils/app_text_tyle.dart';
import '../../utils/app_utils.dart';


class StacksWidget extends StatelessWidget {
  const StacksWidget({
    super.key,
    required this.maxWidth,
    required this.stack,
  });

  final double maxWidth;
  final StacksModel stack;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: maxWidth,
        minWidth: 220, // largura mínima para não quebrar layout
      ),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: AppColors.gray400),
          borderRadius: AppUtils.borderRadiusM,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: stack.icon,
            ),
            Text(
              stack.title,
              style: AppTextStyle.titleSm,
            ),
            const SizedBox(height: 10),
            Text(
              stack.text,
              style: AppTextStyle.textSm,
            ),
          ],
        ),
      ),
    );
  }
}
