// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../utils/app_color.dart';

class HomeController {}

var listTechsModel = [
  TechModel(svgImage: 'GitHub.svg', text: 'GitHub'),
  TechModel(svgImage: 'GitHub.svg', text: 'Flutter'),
  TechModel(svgImage: 'GitHub.svg', text: 'Dart'),
  TechModel(svgImage: 'GitHub.svg', text: 'Python'),
  TechModel(svgImage: 'GitHub.svg', text: 'Java'),
  TechModel(svgImage: 'GitHub.svg', text: 'VsCode'),
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
  SocialMediaModel(iconPath: 'assets/Vector-0.png', text: "GitHub", link: ''),
  SocialMediaModel(iconPath: 'assets/Vector-0.png', text: "E-mail", link: ''),
];

class TechModel {
  String svgImage;
  String text;
  TechModel({
    required this.svgImage,
    required this.text,
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
