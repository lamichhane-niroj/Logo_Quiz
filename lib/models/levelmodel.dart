class LevelModel {
  String levelNumber;
  int points;
  int noslogos;
  int nosSolvedlogos;
  int level;
  bool isLocked;
  int hintsEarned;

  LevelModel(
      {required this.levelNumber,
      required this.noslogos,
      this.points = 0,
      this.hintsEarned = 0,
      this.nosSolvedlogos = 0,
      required this.level,
      this.isLocked = true});
}
