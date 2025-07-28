var listTechsModel = [
  TechModel(svgImage: 'GitHub.svg', text: 'GitHub', link: 'https://docs.github.com/'),
  TechModel(svgImage: 'flutterio-icon.svg', text: 'Flutter', link: 'https://docs.flutter.dev/'),
  TechModel(svgImage: 'Dart.svg', text: 'Dart', link: 'https://dart.dev/docs'),
  TechModel(svgImage: 'Python.svg', text: 'Python', link: 'https://www.python.org/doc/'),
  TechModel(svgImage: 'java.svg', text: 'Java', link: 'https://docs.oracle.com/en/java/'),
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
