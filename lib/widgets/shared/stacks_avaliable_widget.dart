import 'package:flutter/material.dart';

import '../../controllers/mocks/stacks_model.dart';
import '../../utils/app_color.dart';
import '../../utils/app_text_tyle.dart';
import 'stacks_widget.dart';

class StacksAvaliableWidget extends StatelessWidget {
  const StacksAvaliableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;

        final horizontalPadding = maxWidth > 1000 ? 80.0 : 20.0;

        return Container(
          color: AppColors.gray600,
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 60, horizontal: horizontalPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Meus Serviços",
                style: AppTextStyle.subtitle.copyWith(color: AppColors.red),
              ),
              const SizedBox(height: 15),
              Text(
                "Como posso ajudar o seu negócio",
                style: AppTextStyle.titleMd,
              ),
              const SizedBox(height: 40),
              Wrap(
                spacing: 30,
                runSpacing: 30,
                alignment: WrapAlignment.center,
                children: listStacksModel.map(
                  (stack) {
                    final double itemWidth = maxWidth > 1200
                        ? 300
                        : maxWidth > 900
                        ? 250
                        : maxWidth > 600
                        ? maxWidth / 2.2
                        : maxWidth * 0.9;

                    return StacksWidget(
                      maxWidth: itemWidth,
                      stack: stack,
                    );
                  },
                ).toList(),
              ),
            ],
          ),
        );
      },
    );
  }
}
