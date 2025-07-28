import 'package:flutter/material.dart';

import '../../controllers/mocks/social_media_model.dart';
import '../../utils/app_text_tyle.dart';
import 'social_media_widget.dart';

class ContactsWidget extends StatelessWidget {
  const ContactsWidget({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.9,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/Background_Contacts.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: SizedBox(
          width: width * 0.65,
          child: Column(
            children: [
              Text("Contato", style: AppTextStyle.subtitle),
              SizedBox(height: 10),
              Text("Gostou do meu trabalho?", style: AppTextStyle.titleMd),
              SizedBox(height: 10),
              Text(
                "Entre em contato ou acompanhe as minhas redes sociais!",
                style: AppTextStyle.textMd,
              ),
              SizedBox(height: 40),

              for (int i = 0; i < listSocialMedia.length; i++) SocialMediaWidget(width: width, i: i),
            ],
          ),
        ),
      ),
    );
  }
}
