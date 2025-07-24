import 'package:flutter/material.dart';

import '../../utils/app_color.dart';
import '../../utils/app_text_tyle.dart';
import '../../utils/app_utils.dart';

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
                                    "Title",
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