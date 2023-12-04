class LogoModel {
  String imageUrl;
  String answer;
  int points;
  String hints;
  bool isSolved;

  LogoModel(
      {required this.imageUrl,
      required this.answer,
      this.isSolved = false,
      this.points = 20,
      required this.hints});
}
