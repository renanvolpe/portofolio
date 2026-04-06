import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart' show MasonryGridView;
import 'package:portifolio/widgets/shared/work_card_widget.dart';

import '../../controllers/mocks/enterprises_model.dart';
import '../../utils/app_color.dart';
import '../../utils/app_text_tyle.dart';

class WorksMadeWidget extends StatelessWidget {
  const WorksMadeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;

        final horizontalPadding = maxWidth > 900 ? 80.0 : 20.0;

        return Padding(
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Meus trabalhos",
                style: AppTextStyle.subtitle.copyWith(color: AppColors.red),
              ),
              const SizedBox(height: 10),
              Text(
                "Veja as empresas em que trabalhei",
                style: AppTextStyle.titleMd,
              ),
              const SizedBox(height: 40),
              MasonryGridView.count(
                crossAxisCount: _calculateCrossAxisCount(context),
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: listEnterPriseModel.length,
                itemBuilder: (context, i) {
                  final item = listEnterPriseModel[i];
                  return WorkCardWidget(item: item);
                },
              ),
            ],
          ),
        );
      },
    );
  }
  int _calculateCrossAxisCount(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
  if (width >= 1200) return 3;
  if (width >= 800) return 2;
  return 1;
}

}
