import 'package:auto_size_text/auto_size_text.dart' show AutoSizeText;
import 'package:flutter/material.dart';

import '../../controllers/mocks/tech_model.dart';
import '../../utils/app_text_tyle.dart';
import 'tech_widget.dart';

class HeaderIntroWidget extends StatelessWidget {
  const HeaderIntroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 600;
        final isTablet = constraints.maxWidth < 1024;

        final maxWidth = isMobile
            ? constraints.maxWidth * 0.9
            : isTablet
            ? constraints.maxWidth * 0.75
            : constraints.maxWidth * 0.6;

        return Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Background_Intro.png'),
              fit: BoxFit.scaleDown,
            ),
          ),
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: maxWidth),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/fotoPerfil.jpg'),
                    radius: 50,
                  ),
                  const SizedBox(height: 30),
                  AutoSizeText(
                    "Hello World! Meu nome é Renan Volpe e sou",
                    style: AppTextStyle.subtitle,
                    maxLines: 3,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  AutoSizeText(
                    "Desenvolvedor Web e Mobile",
                    maxLines: 2,
                    style: AppTextStyle.titleLg,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  AutoSizeText(
                    "Transformo necessidades em aplicações reais, envolventes e funcionais. Desenvolvo sistemas através da minha paixão pela tecnologia, contribuindo com soluções inovadoras e eficazes para desafios complexos.",
                    textAlign: TextAlign.center,
                    style: AppTextStyle.textSm,
                    maxLines: 10,
                  ),
                  const SizedBox(height: 30),
                  Wrap(
                    spacing: 15,
                    runSpacing: 10,
                    alignment: WrapAlignment.center,
                    children: listTechsModel.map((tech) => TechWidget(techModel: tech)).toList(),
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
