import 'package:flutter/material.dart';
import 'package:portifolio/utils/navigation.dart';

import 'utils/themes/scrollbar_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        scrollbarTheme: scrollbarThemeData
      ),
      themeMode: ThemeMode.light,
      initialRoute: AppRoutes.home,
      onGenerateRoute: (settings) => onGenerateRoute(settings),
    );
  }
}
