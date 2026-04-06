import 'package:flutter/material.dart';
import 'package:portifolio/utils/hoverable_mixin.dart';

import '../../utils/app_color.dart';
import '../../utils/app_utils.dart';

class ImageWorksWidget extends StatefulWidget {
  const ImageWorksWidget({
    super.key,
    required this.path,
    this.isHovered = false,
  });

  final String path;
  final bool isHovered;

  @override
  State<ImageWorksWidget> createState() => _ImageWorksWidgetState();
}

class _ImageWorksWidgetState extends State<ImageWorksWidget> with HoverableMixin {
  @override
  Widget build(BuildContext context) {
    final activeHover = widget.isHovered || isHovered;

    return MouseRegion(
      onEnter: (_) => handleHover(true),
      onExit: (_) => handleHover(false),
      child: ClipRRect(
        borderRadius: AppUtils.borderRadiusS,
        child: Container(
          color: AppColors.gray500,
          width: double.infinity,
          height: 160, 
          padding: const EdgeInsets.all(25),
          child: AnimatedScale(
            scale: activeHover ? 1.15 : 1.0, 
            duration: AppUtils.normal,
            curve: Curves.easeInOut,
            child: Image.asset(
              'assets/${widget.path}',
              fit: BoxFit.contain,
              alignment: Alignment.center,
            ),
          ),
        ),
      ),
    );
  }
}
