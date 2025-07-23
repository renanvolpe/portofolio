import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portifolio/utils/app_color.dart';
import 'package:portifolio/utils/app_utils.dart';

import '../../controllers/home_controller.dart';
import '../../utils/app_text_tyle.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    final scrollController = ScrollController();
    return Scrollbar(
      controller: scrollController,
      thumbVisibility: true,
      trackVisibility: true,
      child: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            HeaderIntroWidget(height: height, width: width),
            Icon(
              Icons.keyboard_double_arrow_down_rounded,
              color: AppColors.gray300,
              size: 60,
            ),
            SizedBox(
              height: height * 0.15,
            ),
            WorksMadeWidget(),
            SizedBox(height: height * 0.1),
          ],
        ),
      ),
    );
  }
}

class WorksMadeWidget extends StatelessWidget {
  const WorksMadeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return SizedBox(
      width: width * 0.7,
      child: Column(
        children: [
          Text(
            "Meus trabalhos",
            style: AppTextStyle.subtitle.copyWith(color: AppColors.red),
          ),
          SizedBox(height: 10),
          Text(
            "Veja os projetos em destaque",
            style: AppTextStyle.titleMd,
          ),
          SizedBox(height: 40),
          LayoutBuilder(
            builder: (context, constrains) {
              double spacing = 20;
              int lengthEachLine = 3;
              return Wrap(
                spacing: spacing,
                runSpacing: spacing,
                alignment: WrapAlignment.spaceBetween,
                runAlignment: WrapAlignment.spaceEvenly,
                children: [
                  for (int i = 0; i < lengthEachLine * 2; i++)
                    Container(
                      height: 260,
                      width: (constrains.maxWidth - (spacing * 2)) / lengthEachLine,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: AppColors.gray400,
                        borderRadius: AppUtils.borderRadiusS,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: AppUtils.borderRadiusS,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: AppUtils.borderRadiusS,
                              child: Image.asset('assets/Thumbnail_Project-0${i + 1}.png'),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 6),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Title Sm",
                                    style: AppTextStyle.titleSm,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          "Rede social onde as pessoas mostram os registros de suas viagens pelo mundo",
                                          style: AppTextStyle.textSm,
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

class HeaderIntroWidget extends StatelessWidget {
  const HeaderIntroWidget({
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
              SizedBox(height: height * 0.1),
              CircleAvatar(),
              SizedBox(height: height * 0.05),
              Text(
                "Hello World! Meu nome é Renan Volpe e sou",
                style: AppTextStyle.subtitle,
              ),
              SizedBox(height: height * 0.05),
              Text(
                "Desenvolvedor Web e Mobile",
                style: AppTextStyle.titleLg,
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
                  for (int i = 0; i < listTechsModel.length; i++)
                    TechWidget(
                      svgImage: listTechsModel[i].svgImage,
                      text: listTechsModel[i].text,
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TechWidget extends StatelessWidget {
  const TechWidget({
    super.key,
    required this.svgImage,
    required this.text,
  });
  final String svgImage;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: AppUtils.borderRadiusL,
        color: AppColors.gray400,
      ),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            'assets/$svgImage',
            width: 20,
            height: 20,
            semanticsLabel: svgImage,
          ),
          SizedBox(width: 3),
          Text(
            text,
            style: AppTextStyle.textMd,
          ),
        ],
      ),
    );
  }
}
