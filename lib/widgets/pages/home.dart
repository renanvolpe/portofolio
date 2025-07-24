import 'package:flutter/material.dart';
import 'package:portifolio/utils/app_color.dart';

import '../shared/contacts_widget.dart';
import '../shared/header_intro_widget.dart';
import '../shared/stacks_avaliable_widget.dart';
import '../shared/works_made_widget.dart';

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
            Icon(Icons.keyboard_double_arrow_down_rounded, color: AppColors.gray300, size: 60),
            SizedBox(
              height: height * 0.15,
            ),
            WorksMadeWidget(),
            SizedBox(height: height * 0.15),
            StacksAvaliableWidget(height: height, width: width),
            SizedBox(height: height * 0.15),
            ContactsWidget(height: height, width: width),
            SizedBox(height: height * 0.15),
          ],
        ),
      ),
    );
  }
}
