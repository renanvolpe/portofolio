import 'package:flutter/material.dart';
import 'package:portifolio/utils/hoverable_mixin.dart';
import 'package:url_launcher/url_launcher.dart' show launchUrl, canLaunchUrl, LaunchMode;

import '../../controllers/mocks/social_media_model.dart';
import '../../utils/app_color.dart';
import '../../utils/app_text_tyle.dart';
import '../../utils/app_utils.dart';
import '../../utils/hover_tap_widget.dart';

class SocialMediaWidget extends StatefulWidget {
  const SocialMediaWidget({
    super.key,
    required this.width,
    required this.socialMediaModel,
  });

  final double width;
  final SocialMediaModel socialMediaModel;

  @override
  State<SocialMediaWidget> createState() => _SocialMediaWidgetState();
}

class _SocialMediaWidgetState extends State<SocialMediaWidget> with HoverableMixin {
  @override
  Widget build(BuildContext context) {
    return HoverTapWidget(
      onHover: handleHover,
      onTap: () async => await _launchCustomUrl(widget.socialMediaModel.link),
      child: AnimatedContainer(
        duration: AppUtils.fast,
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: isHovered ? AppColors.gray600 : AppColors.gray400,
          borderRadius: AppUtils.borderRadiusM,
        ),
        width: widget.width * 0.4,
        child: Row(
          children: [
            Image.asset(width: 20, height: 20, widget.socialMediaModel.iconPath),
            SizedBox(width: 20),
            Text(widget.socialMediaModel.text, style: AppTextStyle.textMd),
            Spacer(),
            Icon(
              Icons.chevron_right,
              color: AppColors.gray300,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _launchCustomUrl(String url) async {
    final Uri uri = Uri.parse(url);

    if (await canLaunchUrl(uri)) {
      await launchUrl(
        uri,
        mode: LaunchMode.platformDefault,
      );
    } else {
      throw 'Could not launch $url';
    }
  }
}
