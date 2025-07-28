import 'package:flutter/material.dart';

import '../../controllers/home_controller.dart';
import '../../utils/app_color.dart';
import '../../utils/app_text_tyle.dart';
import '../../utils/app_utils.dart';
import '../../utils/hover_tap_widget.dart';
import '../../utils/hoverable_mixin.dart';

class StackWidget extends StatefulWidget {
  const StackWidget({
    super.key,
    required this.techModel,
  });
  final TechModel techModel;

  @override
  State<StackWidget> createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> with HoverableMixin {
  @override
  Widget build(BuildContext context) {
    return HoverTapWidget(
      onHover: handleHover,
      child: AnimatedContainer(
        duration: AppUtils.fast,
        decoration: BoxDecoration(
          borderRadius: AppUtils.borderRadiusL,
          color: isHovered ? AppColors.gray500 : AppColors.gray400,
          border: Border.all(
            width: 1,
            color: isHovered ? AppColors.gray400 : AppColors.gray500,
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 7),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(width: 3),
            Text(
              widget.techModel.text,
              style: AppTextStyle.textMd.copyWith(
                color: isHovered ? AppColors.gray200 : AppColors.gray300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
