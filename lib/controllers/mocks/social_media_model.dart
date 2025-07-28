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


var listSocialMedia = [
  SocialMediaModel(iconPath: 'assets/Vector-0.png', text: "LinkedIn", link: ''),
  SocialMediaModel(iconPath: 'assets/Vector-1.png', text: "Instagram", link: ''),
  SocialMediaModel(iconPath: 'assets/Vector-2.png', text: "GitHub", link: ''),
  SocialMediaModel(iconPath: 'assets/Vector-3.png', text: "E-mail", link: ''),
];