import 'package:flutter/material.dart';

import '../controllers/mocks/enterprises_model.dart';
import '../controllers/mocks/social_media_model.dart';

class AssetPreloader {
  static Future<void> preloadAssets(BuildContext context) async {
    final List<Future<void>> preloads = [];

    // Static Assets
    final imageAssets = [
      'assets/Background_Intro.png',
      'assets/fotoPerfil.jpg',
      'assets/Background_Contacts.png',
    ];

    for (var asset in imageAssets) {
      preloads.add(precacheImage(AssetImage(asset), context));
    }

    // Social Media Icons
    for (var social in listSocialMedia) {
      preloads.add(precacheImage(AssetImage(social.iconPath), context));
    }

    // Enterprise Logos
    for (var enterprise in listEnterPriseModel) {
      preloads.add(precacheImage(AssetImage('assets/${enterprise.path}'), context));
    }

    // Thumbnails
    final thumbnails = [
      'assets/Thumbnail_Project-01.png',
      'assets/Thumbnail_Project-02.png',
      'assets/Thumbnail_Project-03.png',
      'assets/Thumbnail_Project-04.png',
      'assets/Thumbnail_Project-05.png',
      'assets/Thumbnail_Project-06.png',
    ];

    for (var thumb in thumbnails) {
      preloads.add(precacheImage(AssetImage(thumb), context));
    }

    await Future.wait(preloads);
  }
}
