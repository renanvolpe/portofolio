import 'package:auto_size_text/auto_size_text.dart' show AutoSizeText;
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../controllers/mocks/tech_model.dart';
import '../../utils/app_text_tyle.dart';
import '../../utils/app_color.dart';
import 'tech_widget.dart';

class HeaderIntroWidget extends HookWidget {
  const HeaderIntroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final floatController = useAnimationController(
      duration: const Duration(seconds: 3),
    );

    final shimmerController = useAnimationController(
      duration: const Duration(seconds: 4),
    );

    useEffect(() {
      floatController.repeat(reverse: true);
      shimmerController.repeat();
      return null;
    }, []);

    final floatAnimation = useAnimation(
      Tween<double>(begin: 0, end: 12).animate(
        CurvedAnimation(parent: floatController, curve: Curves.easeInOut),
      ),
    );

    final shimmerAnimation = useAnimation(
      Tween<double>(begin: -1.0, end: 2.0).animate(
        CurvedAnimation(parent: shimmerController, curve: Curves.linear),
      ),
    );

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
              fit: BoxFit.fitWidth,
            ),
          ),
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: maxWidth),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Transform.translate(
                    offset: Offset(0, -floatAnimation),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.blue.withAlpha(50),
                            blurRadius: 40,
                            spreadRadius: 10,
                          ),
                        ],
                      ),
                      child: const CircleAvatar(
                        backgroundImage: AssetImage('assets/fotoPerfil.jpg'),
                        radius: 50,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  AutoSizeText(
                    "Hello World! Meu nome é Renan Volpe e sou",
                    style: AppTextStyle.subtitle,
                    maxLines: 3,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  ShaderMask(
                    shaderCallback: (bounds) {
                      return LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          AppColors.gray100,
                          AppColors.red,
                          AppColors.purple,
                          AppColors.gray100,
                        ],
                        stops: [
                          shimmerAnimation - 0.3,
                          shimmerAnimation,
                          shimmerAnimation + 0.3,
                          shimmerAnimation + 0.6,
                        ],
                      ).createShader(bounds);
                    },
                    blendMode: BlendMode.srcIn,
                    child: AutoSizeText(
                      "Desenvolvedor Web e Mobile",
                      maxLines: 2,
                      style: AppTextStyle.titleLg.copyWith(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
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
                    children: listTechsModel
                        .map((tech) => TechWidget(techModel: tech))
                        .toList(),
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
