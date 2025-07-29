import 'package:flutter/material.dart';

import '../../controllers/mocks/tech_model.dart';
import '../../utils/app_text_tyle.dart';
import 'tech_widget.dart';

class HeaderIntroMobileWidget extends StatelessWidget {
  const HeaderIntroMobileWidget({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.8,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/Background_Intro.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: SizedBox(
          width: width * 0.65,
          child: Column(
            children: [
              SizedBox(height: height * 0.075),
              CircleAvatar(
                backgroundImage: Image.asset('assets/fotoPerfil.jpg').image,
                radius: 50,
              ),
              SizedBox(height: height * 0.05),
              Text(
                "Hello World! Meu nome é Renan Volpe e sou",
                style: AppTextStyle.subtitle,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: height * 0.05),
              Text(
                "Desenvolvedor Web e Mobile",
                style: AppTextStyle.titleLg,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: height * 0.05),
              Text(
                "Transformo necessidades em aplicações reais, evolventes e funcionais. Desenvolvo sistemas através da minha paixão pela tecnologia, contribuindo com soluções inovadoras e eficazes para desafios complexos.",
                textAlign: TextAlign.center,
                style: AppTextStyle.textSm,
              ),
              SizedBox(height: height * 0.05),
              Wrap(
                spacing: 15,
                children: [
                  for (int i = 0; i < listTechsModel.length; i++) TechWidget(techModel: listTechsModel[i]),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
