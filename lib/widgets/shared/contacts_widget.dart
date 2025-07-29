import 'package:flutter/material.dart';

import '../../controllers/mocks/social_media_model.dart';
import '../../utils/app_text_tyle.dart';
import 'social_media_widget.dart';

class ContactsWidget extends StatelessWidget {
  const ContactsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;

        return Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Background_Contacts.png'),
              fit: BoxFit.cover,
            ),
          ),
          padding: const EdgeInsets.symmetric(vertical: 60),
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: maxWidth * 0.8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Contato", style: AppTextStyle.subtitle),
                  const SizedBox(height: 10),
                  Text("Gostou do meu trabalho?", style: AppTextStyle.titleMd),
                  const SizedBox(height: 10),
                  Text(
                    "Entre em contato ou acompanhe as minhas redes sociais!",
                    style: AppTextStyle.textMd,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 40),

                  // Adapt layout for social links
                  Wrap(
                    runSpacing: 20,
                    spacing: 20,
                    alignment: WrapAlignment.center,
                    children: listSocialMedia.map(
                      (social) => SocialMediaWidget(
                        maxWidth: maxWidth,
                        socialMediaModel: social,
                      ),
                    ).toList(),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
