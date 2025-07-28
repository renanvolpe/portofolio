
import 'package:flutter/material.dart';

import '../../utils/app_color.dart';

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
