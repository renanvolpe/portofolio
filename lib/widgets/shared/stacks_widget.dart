import 'package:flutter/material.dart';
import 'package:portifolio/utils/hoverable_mixin.dart';

import '../../controllers/mocks/stacks_model.dart';
import '../../utils/app_color.dart';
import '../../utils/app_text_tyle.dart';
import '../../utils/app_utils.dart';

class StacksWidget extends StatefulWidget {
  const StacksWidget({
    super.key,
    required this.maxWidth,
    required this.stack,
  });

  final double maxWidth;
  final StacksModel stack;

  @override
  State<StacksWidget> createState() => _StacksWidgetState();
}

class _StacksWidgetState extends State<StacksWidget> with HoverableMixin {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => handleHover(true),
      onExit: (_) => handleHover(false),
      child: AnimatedContainer(
        duration: AppUtils.normal,
        curve: Curves.easeOut,
        constraints: BoxConstraints(
          maxWidth: widget.maxWidth,
          minWidth: 220,
        ),
        transform: isHovered 
            ? Matrix4.translationValues(0, -10, 0) // Lift up effect
            : Matrix4.identity(),
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: isHovered ? AppColors.gray400 : AppColors.gray600,
          border: Border.all(
            width: 2,
            color: isHovered ? AppColors.blue.withAlpha(180) : AppColors.gray400,
          ), // Active blue border on hover
          borderRadius: AppUtils.borderRadiusM,
          boxShadow: isHovered 
            ? [
                BoxShadow(
                  color: AppColors.blue.withAlpha(40),
                  blurRadius: 20,
                  offset: const Offset(0, 10),
                )
              ]
            : [],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: AnimatedScale(
                scale: isHovered ? 1.2 : 1.0,
                duration: AppUtils.normal,
                child: widget.stack.icon,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              widget.stack.title,
              style: AppTextStyle.titleSm.copyWith(
                color: isHovered ? AppColors.blue : AppColors.gray100,
              ), // Highlight title on hover
            ),
            const SizedBox(height: 15),
            Text(
              widget.stack.text,
              style: AppTextStyle.textSm,
            ),
          ],
        ),
      ),
    );
  }
}
