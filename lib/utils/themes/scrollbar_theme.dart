import 'package:flutter/material.dart';

import '../app_color.dart';

var scrollbarThemeData = ScrollbarThemeData(
  thumbColor: WidgetStateProperty.all(AppColors.gray300), // light thumb
  trackColor: WidgetStateProperty.all(AppColors.gray400),
  trackBorderColor: WidgetStateProperty.all(Colors.transparent),
  thickness: WidgetStateProperty.resolveWith((states) {
    if (states.contains(WidgetState.hovered)) {
      return 7; 
    }
    return 4; 
  }),
);
