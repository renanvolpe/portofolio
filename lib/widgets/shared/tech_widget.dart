// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../controllers/mocks/tech_model.dart';
import '../../utils/app_color.dart';
import '../../utils/app_text_tyle.dart';
import '../../utils/app_utils.dart';
import '../../utils/hover_tap_widget.dart';
import '../../utils/hoverable_mixin.dart';

class TechWidget extends StatefulWidget {
  const TechWidget({
    super.key,
    required this.techModel,
    this.isToUseImage = true,
  });
  final TechModel techModel;
  final bool isToUseImage;

  @override
  State<TechWidget> createState() => _TechWidgetState();
}

class _TechWidgetState extends State<TechWidget> with HoverableMixin {
  @override
  Widget build(BuildContext context) {
    return HoverTapWidget(
      onTap: () => launchUrl(Uri.parse(widget.techModel.link)),
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
            if (widget.isToUseImage)
              SvgPicture.asset(
                'assets/${widget.techModel.svgImage}',
                width: 20,
                height: 20,
                semanticsLabel: widget.techModel.svgImage,
              ),
            SizedBox(width: 3),
            Text(
              widget.techModel.text,
              style: AppTextStyle.textMd,
            ),
          ],
        ),
      ),
    );
  }
}
