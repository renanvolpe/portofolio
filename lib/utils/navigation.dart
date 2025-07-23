import 'package:flutter/material.dart';
import 'package:portifolio/widgets/pages/contact.dart';
import 'package:portifolio/widgets/pages/home.dart';

import 'app_color.dart';
import 'app_utils.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  // final args = settings.arguments;

  late WidgetBuilder page;
  try {
    switch (settings.name) {
      case AppRoutes.landscaping:
        page = (_) =>  Container();
        break;

      case AppRoutes.home:
        page = (_) => const Home();
        break;

      case AppRoutes.contact:
        page = (_) => Contact();
        break;

      default:
        page = (_) => const Scaffold(
          body: Center(child: Text('404 - Page not found')),
        );
    }
  } catch (e) {
    page = (_) => const Scaffold(
      body: Center(child: Text('Invalid arguments for the Page')),
    );
  }

  return PageRouteBuilder(
    settings: settings,
    pageBuilder: (context, _, _) => SelectionArea(
      child: Scaffold(
        backgroundColor: AppColors.gray500,
        body: page(context),
      ),
    ),
    transitionsBuilder: (_, animation, __, child) {
      return FadeTransition(opacity: animation, child: child);
    },
    transitionDuration: AppUtils.fast,
  );
}

class AppRoutes {
  static const String landscaping = '/';
  static const String home = '/home';
  static const String contact = '/contact';
}
