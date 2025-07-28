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
    title: 'Aplicativos Mobile',
    text:
        'Desenvolvimento de aplicativos de alta performance para Android e iOS, com foco em usabilidade, escalabilidade e experiência do usuário.',
  ),
  StacksModel(
    icon: Icon(
      Icons.data_usage_rounded,
      color: AppColors.yellow,
      size: 50,
    ),
    title: 'Sistemas Web',
    text:
        'Criação de aplicações web modernas e responsivas, integrando funcionalidades dinâmicas com APIs e bancos de dados, voltadas para desempenho e segurança.',
  ),
  StacksModel(
    icon: Icon(
      Icons.handyman_rounded,
      color: AppColors.green,
      size: 50,
    ),
    title: 'Manutenção de Softwares',
    text:
        'Aprimoramento e correção de sistemas existentes, garantindo estabilidade, otimização de código, atualizações e evolução contínua de projetos.',
  ),
];
