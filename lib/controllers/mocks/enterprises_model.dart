
import '../home_controller.dart';
import 'tech_model.dart';

class EnterprisesModel {
  String name;
  String description;
  String path;
  List<TechModel> listTechs;
  EnterprisesModel({
    required this.name,
    required this.description,
    required this.path,
    required this.listTechs,
  });
}

var listEnterPriseModel = [
  EnterprisesModel(
    name: 'Syspa',
    description: '''
Trabalhei na implementação de diversas funcionalidades de um sistema de finanças da empresa SYSPA. Trabalhei com Flutter, junto ao Dart, enviando requisições via API. 
Usei o Build Runner para geração de Models e formatação de Services, com o gerenciador de estado BLoC, além de diversas bibliotecas implementadas.
Também adquiri experiência com a publicação de aplicativos na Play Store.
''',
    path: 'syspa_logo.jpeg',
    listTechs: [
      TechModel(svgImage: 'bloc.svg', text: 'BLoC', link: '#'),
      TechModel(svgImage: 'retrofit.svg', text: 'Retrofit', link: '#'),
      TechModel(svgImage: 'publicacoes.svg', text: 'PlayStore', link: '#'),
    ],
  ),
  EnterprisesModel(
    name: 'B2ML Sistemas',
    description: '''
Projeto de aplicativo de entrega
Nesse projeto, trabalhei utilizando o Flutter e dart para consumir uma API par realizar as telas e executar as funcionalidades desejadas pelo cliente.
Características do projeto:
Gerenciamento de estado BLoC; Diferenciação de ambientes com Flavor; Organização de arquivos via modulos; Wireframes realizados pelo Figma; Uso de localização do celular e endereço por meio de latitude e longitude; e diversidades de packages para adequação do código.
''',
    path: 'b2ml_sistemas_logo.jpeg',
    listTechs: [
      TechModel(svgImage: 'bloc.svg', text: 'BLoC', link: '#'),
      TechModel(svgImage: 'flavors.svg', text: 'Flavors', link: '#'),
      TechModel(svgImage: 'gps-funcoes.svg', text: 'GPS', link: '#'),
      TechModel(svgImage: 'modular-arch.svg', text: 'Modular', link: '#'),
      TechModel(svgImage: 'unit-test.svg', text: 'Unit Test', link: '#'),
    ],
  ),

  EnterprisesModel(
    name: 'Estudologia',
    description: '''
O projeto consistiu em um aplicativo desde o zero de uma plataforma de educação.
Foram feitas diversas funcionalidades relacionadas ao estudo dos alunos, como autenticação, resolução de questões e de simulado, aula por mensagem, aula gravada por vídeo entre outras funcionalidades.''',
    path: 'estudologia_logo.jpeg',
    listTechs: [
      TechModel(svgImage: 'bloc.svg', text: 'BLoC', link: '#'),
      TechModel(svgImage: 'cubit.svg', text: 'Cubit', link: '#'),
      TechModel(svgImage: 'dio.svg', text: 'Dio', link: '#'),
      TechModel(svgImage: 'publicacoes.svg', text: 'PlayStore', link: '#'),
      TechModel(svgImage: 'websocket.svg', text: 'WebSocket', link: '#'),
      TechModel(svgImage: 'video-player.svg', text: 'Video Player', link: '#'),
      TechModel(svgImage: 'flutter-modular.svg', text: 'Modular', link: '#'),
      TechModel(svgImage: 'push-notification.svg', text: 'Push Notification', link: '#'),
    ],
  ),
  EnterprisesModel(
    name: 'Mult-e Engenharia Digital',
    description: '''
Atuei como desenvolvedor multi-tarefas em sistemas legados para criar e ajustar funcionalidades conforme demanda.
Atividades executadas: atualização de Pascal para Python; ajustes em robôs com Python; ajustes pontuais em sistema .Net; e manutenção em projetos Flutter Web e Mobile.
''',
    path: 'mult_e_logo.jpeg',
    listTechs: [
      TechModel(svgImage: 'python.svg', text: 'Python', link: '#'),
      TechModel(svgImage: 'dotnet.svg', text: '.Net', link: '#'),
      TechModel(svgImage: 'banco-de-dados.svg', text: 'Database', link: '#'),
      TechModel(svgImage: 'flutter-web.svg', text: 'Flutter Web', link: '#'),
      TechModel(svgImage: 'automatizacao.svg', text: 'Automatização', link: '#'),
    ],
  ),

  EnterprisesModel(
    name: 'Projeto de Mestrado',
    description: '''
Atuei como Tech Lead auxiliando alunos de graduação na construção de um sistema de conexão entre produtores de agricultura local e compradores.
Responsável por guiar tecnicamente a equipe, revisar padrões de código, apoiar em problemas técnicos, e coordenar entregas via Kanban.
''',
    path: 'unifesp_logo.jpeg',
    listTechs: [
      TechModel(svgImage: 'bloc.svg', text: 'BLoC', link: '#'),
      TechModel(svgImage: 'pull-requests.svg', text: 'PRs', link: '#'),
      TechModel(svgImage: 'shared-preferences.svg', text: 'Database', link: '#'),
      TechModel(svgImage: 'fluttermap.svg', text: 'FlutterMap', link: '#'),
      TechModel(svgImage: 'singleton-pattern.svg', text: 'Singleton', link: '#'),
      TechModel(svgImage: 'unit-tests.svg', text: 'Unit Tests', link: '#'),
    ],
  ),
  EnterprisesModel(
    name: 'DIXI',
    description: '''
Atuei como desenvolvedor Flutter Web e Mobile na manutenção de um sistema. Fui responsável por ajudar a equipe a conhecer o Flutter, apresentar soluções inteligentes e guiar o projeto para um aumento de performance e padronização. Também realizei ajustes pontuais em sistema Java Spring Boot.
''',
    path: 'dixiponto_logo.jpeg',
    listTechs: [
      TechModel(svgImage: 'flutter-web.svg', text: 'Flutter Web', link: '#'),
      TechModel(svgImage: 'liderenca.svg', text: 'Lead', link: '#'),
      TechModel(svgImage: 'mixins.svg', text: 'Mixin', link: '#'),
      TechModel(svgImage: 'provider.svg', text: 'Provider', link: '#'),
      TechModel(svgImage: 'valuenotifier.svg', text: 'ValueNotifier', link: '#'),
      TechModel(svgImage: 'changenotifier.svg', text: 'ChangeNotifier', link: '#'),
    ],
  ),
];