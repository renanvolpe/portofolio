import 'package:flutter/material.dart';
import 'package:portifolio/utils/asset_preloader.dart';
import 'package:portifolio/utils/navigation.dart';

import 'utils/themes/scrollbar_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isLoaded = false;
  bool _preloadStarted = false;

  void _startPreloading(BuildContext context) {
    if (_preloadStarted) return;
    _preloadStarted = true;
    
    AssetPreloader.preloadAssets(context).then((_) {
      if (mounted) {
        setState(() {
          _isLoaded = true;
        });
      }
    }).catchError((_) {
      if (mounted) {
        setState(() {
          _isLoaded = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Renan Volpe | Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        scrollbarTheme: scrollbarThemeData,
      ),
      themeMode: ThemeMode.light,
      initialRoute: AppRoutes.home,
      onGenerateRoute: (settings) => onGenerateRoute(settings),
      builder: (context, child) {
        if (!_isLoaded) {
          _startPreloading(context);
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
        return child ?? const SizedBox.shrink();
      },
    );
  }
}
