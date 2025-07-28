import 'package:flutter/material.dart';
import 'package:portifolio/utils/hoverable_mixin.dart';

import '../../utils/app_utils.dart';

class ImageWorksWidget extends StatefulWidget {
  const ImageWorksWidget({super.key, required this.path});

  final String path;

  @override
  State<ImageWorksWidget> createState() => _ImageWorksWidgetState();
}

class _ImageWorksWidgetState extends State<ImageWorksWidget> with HoverableMixin {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => handleHover(true),
      onExit: (_) => handleHover(false),
      child: ClipRRect(
        borderRadius: AppUtils.borderRadiusS,
        child: SizedBox(
          width: double.infinity,
          height: 150,
          child: AnimatedScale(
            scale: isHovered ? 0.85 : 1.2, 
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            child: Image.asset(
              'assets/${widget.path}',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
              alignment: Alignment.center,
            ),
          ),
        ),
      ),
    );
  }
}
