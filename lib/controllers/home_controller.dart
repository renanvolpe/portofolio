// ignore_for_file: public_member_api_docs, sort_constructors_first
class HomeController {}

var listTechsModel = [
  TechModel(svgImage: 'GitHub.svg', text: 'GitHub'),
  TechModel(svgImage: 'GitHub.svg', text: 'Flutter'),
  TechModel(svgImage: 'GitHub.svg', text: 'Dart'),
  TechModel(svgImage: 'GitHub.svg', text: 'Python'),
  TechModel(svgImage: 'GitHub.svg', text: 'Java'),
  TechModel(svgImage: 'GitHub.svg', text: 'VsCode'),
];

class TechModel {
  String svgImage;
  String text;
  TechModel({
    required this.svgImage,
    required this.text,
  });
}
