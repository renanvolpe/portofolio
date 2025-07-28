import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart' show MasonryGridView;
import 'package:portifolio/widgets/shared/stack_widget.dart';

import '../../controllers/home_controller.dart';
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
    final double spacing = 20;
    final int lengthEachLine = 3;
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
            "Veja as empresas em que trabalhei",
            style: AppTextStyle.titleMd,
          ),
          SizedBox(height: 40),
          LayoutBuilder(
            builder: (context, constraints) {
              final crossAxisCount = lengthEachLine;
              final spacing = 16.0;

              return MasonryGridView.count(
                crossAxisCount: crossAxisCount,
                mainAxisSpacing: spacing,
                crossAxisSpacing: spacing,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(), // if inside scroll view
                itemCount: listEnterPriseModel.length,
                itemBuilder: (context, i) {
                  final item = listEnterPriseModel[i];

                  return Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: AppColors.gray400,
                      borderRadius: AppUtils.borderRadiusS,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: AppUtils.borderRadiusS,
                          child: Image.asset(
                            'assets/${item.path}',
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: 150,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 6),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(item.name, style: AppTextStyle.titleSm),
                              const SizedBox(height: 4),
                              Text(
                                item.description,
                                style: AppTextStyle.textSm,
                                textAlign: TextAlign.justify,
                              ),
                            ],
                          ),
                        ),
                        Text("Stacks trabalhadas", style: AppTextStyle.titleSm),
                        const SizedBox(height: 10),
                        Wrap(
                          spacing: 10,
                          runSpacing: 10,
                          alignment: WrapAlignment.start,
                          children: [
                            for (final tech in item.listTechs) StackWidget(techModel: tech),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }

  _calculateRowSize(constraints, spacing) {
    return constraints.maxWidth - (spacing * 2);
  }
}
