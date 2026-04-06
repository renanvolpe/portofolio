import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portifolio/utils/hoverable_mixin.dart';
import '../../controllers/mocks/enterprises_model.dart';
import '../../utils/app_color.dart';
import '../../utils/app_text_tyle.dart';
import '../../utils/app_utils.dart';
import 'image_works_widget.dart';
import 'stack_widget.dart';

class WorkCardWidget extends StatefulWidget {
  const WorkCardWidget({super.key, required this.item});

  final EnterprisesModel item;

  @override
  State<WorkCardWidget> createState() => _WorkCardWidgetState();
}

class _WorkCardWidgetState extends State<WorkCardWidget> with HoverableMixin {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => handleHover(true),
      onExit: (_) => handleHover(false),
      child: AnimatedContainer(
        duration: AppUtils.normal,
        curve: Curves.easeInOut,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isHovered ? AppColors.gray500 : AppColors.gray400,
          borderRadius: AppUtils.borderRadiusS,
          border: Border.all(
            color: isHovered ? AppColors.gray300.withAlpha(100) : AppColors.gray300.withAlpha(0),
            width: 1,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageWorksWidget(
              path: widget.item.path,
              isHovered: isHovered, // Pass hover state down
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(widget.item.name, style: AppTextStyle.titleSm),
                  const SizedBox(height: 8),
                  AutoSizeText(
                    widget.item.description,
                    style: AppTextStyle.textSm,
                    textAlign: TextAlign.justify,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 5,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Text("Stacks trabalhadas", style: AppTextStyle.titleSm),
            const SizedBox(height: 10),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: widget.item.listTechs.map((tech) => StackWidget(techModel: tech)).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
