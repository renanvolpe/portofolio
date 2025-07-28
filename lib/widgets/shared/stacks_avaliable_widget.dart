import 'package:flutter/material.dart';

import '../../controllers/mocks/stacks_model.dart';
import '../../utils/app_color.dart';
import '../../utils/app_text_tyle.dart';
import 'stacks_widget.dart';

class StacksAvaliableWidget extends StatelessWidget {
  const StacksAvaliableWidget({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.6,
      decoration: BoxDecoration(
        color: AppColors.gray600,
      ),
      child: SizedBox(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: height * 0.1),
              Text(
                "Meus Serviços",
                style: AppTextStyle.subtitle.copyWith(color: AppColors.red),
              ),
              SizedBox(height: 15),
              Text(
                "Como posso ajudar o seu negócio",
                style: AppTextStyle.titleMd,
              ),
              SizedBox(height: 25),
              SizedBox(
                width: width * 0.7,
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        for (int i = 0; i < listStacksModel.length; i++)
                          StacksWidget(
                            height: height,
                            maxWidth: constraints.maxWidth,
                            stack: listStacksModel[i],
                          ),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(height: height * 0.1),
            ],
          ),
        ),
      ),
    );
  }
}
