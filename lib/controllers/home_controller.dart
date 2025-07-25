// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../utils/app_color.dart';

class HomeController {}

var listTechsModel = [
  TechModel(svgImage: 'GitHub.svg', text: 'GitHub', link: 'https://docs.github.com/'),
  TechModel(svgImage: 'flutterio-icon.svg', text: 'Flutter', link: 'https://docs.flutter.dev/'),
  TechModel(svgImage: 'Dart.svg', text: 'Dart', link: 'https://dart.dev/docs'),
  TechModel(svgImage: 'Python.svg', text: 'Python', link: 'https://www.python.org/doc/'),
  TechModel(svgImage: 'java.svg', text: 'Java', link: 'https://docs.oracle.com/en/java/'),
];

//'assets/Vector-$i.png'

var listStacksModel = [
  StacksModel(
    icon: Icon(
      Icons.devices,
      color: AppColors.purple,
      size: 50,
    ),
    title: 'Websites e Aplicativos',
    text: 'Desenvolvimento de interfaces',
  ),
  StacksModel(
    icon: Icon(
      Icons.data_usage_rounded,
      color: AppColors.yellow,
      size: 50,
    ),
    title: 'API e banco de dados',
    text: 'Criação de serviços do sistema ',
  ),
  StacksModel(
    icon: Icon(
      Icons.handyman_rounded,
      color: AppColors.green,
      size: 50,
    ),
    title: 'DevOps',
    text: 'Gestão e infraestrutura da aplicação',
  ),
];

var listSocialMedia = [
  SocialMediaModel(iconPath: 'assets/Vector-0.png', text: "LinkedIn", link: ''),
  SocialMediaModel(iconPath: 'assets/Vector-1.png', text: "Instagram", link: ''),
  SocialMediaModel(iconPath: 'assets/Vector-2.png', text: "GitHub", link: ''),
  SocialMediaModel(iconPath: 'assets/Vector-3.png', text: "E-mail", link: ''),
];

class TechModel {
  String svgImage;
  String text;
  String link;
  TechModel({
    required this.svgImage,
    required this.text,
    required this.link,
  });
}

class SocialMediaModel {
  String iconPath;
  String text;
  String link;
  SocialMediaModel({
    required this.iconPath,
    required this.text,
    required this.link,
  });
}

class StacksModel {
  Icon icon;
  String title;
  String text;
  StacksModel({
    required this.icon,
    required this.title,
    required this.text,
  });
}
