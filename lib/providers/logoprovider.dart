import 'package:flutter/material.dart';
import 'package:logoquiz/models/levelmodel.dart';
import 'package:logoquiz/models/logomodel.dart';

class LogoProvider extends ChangeNotifier {
  // original logo data
  List<List<LogoModel>> logoData = [
    // internet logos
    [
      LogoModel(
          imageUrl: "facebook", answer: "FACEBOOK", hints: "AABCDEFGKOORSU"),
      LogoModel(imageUrl: "google", answer: "GOOGLE", hints: "BDEEFFGGJLLOOR"),
      LogoModel(imageUrl: "amazon", answer: "AMAZON", hints: "AADEEKLMNOPQWZ"),
      LogoModel(
          imageUrl: "dropbox", answer: "DROPBOX", hints: "BDDEFKMOOPRXYY"),
      LogoModel(imageUrl: "ebay", answer: "EBAY", hints: "ABEFOVY"),
      LogoModel(
          imageUrl: "twitter", answer: "TWITTER", hints: "ACEEHIKMPRTTTW"),
      LogoModel(
          imageUrl: "instagram", answer: "INSTAGRAM", hints: "AABFGIIKMNRSST"),
      LogoModel(imageUrl: "chrome", answer: "CHROME", hints: "CDEEHKMMOPQQRU"),
      LogoModel(
          imageUrl: "pinterest", answer: "PINTEREST", hints: "CCEEIJKNPRSTTX"),
      LogoModel(
          imageUrl: "netflix", answer: "NETFLIX", hints: "AEFHHILNNPQSTX"),
      LogoModel(
          imageUrl: "youtube", answer: "YOUTUBE", hints: "BEEMOOPQTTUUXY"),
      LogoModel(
          imageUrl: "firefox", answer: "FIREFOX", hints: "EFFIKKOQRRUWXY"),
      LogoModel(
          imageUrl: "whatsapp", answer: "WHATSAPP", hints: "AACDEHMPPQRSTW"),
      LogoModel(
          imageUrl: "bitcoin", answer: "BITCOIN", hints: "BECIINOPQTTUUY"),
      LogoModel(imageUrl: "office", answer: "OFFICE", hints: "ACEFFIO"),
      LogoModel(imageUrl: "tiktok", answer: "TIKTOK", hints: "AEIJKKLNOSTTVX"),
      LogoModel(
          imageUrl: "googleplay",
          answer: "GOOGLEPLAY",
          hints: "AACDEFGGHIJKLLMNOOPSY"),
      LogoModel(imageUrl: "tinder", answer: "TINDER", hints: "ACDEEHIJKNRSTV"),
      LogoModel(imageUrl: "flickr", answer: "FLICKR", hints: "ACEFGIJKKLMRRV"),
      LogoModel(imageUrl: "shazam", answer: "SHAZAM", hints: "AADFHIJMNPRSUZ"),
      LogoModel(imageUrl: "yahoo", answer: "YAHOO", hints: "AACDHJLNOOSSWY"),
      LogoModel(imageUrl: "adobe", answer: "ADOBE", hints: "ABBDELMOOPPQWY"),
      LogoModel(
          imageUrl: "snapchat", answer: "SNAPCHAT", hints: "AACEHIKMNNPSTV"),
      LogoModel(imageUrl: "skype", answer: "SKYPE", hints: "BBCEGKNPQRSVWY"),
      LogoModel(imageUrl: "gmail", answer: "GMAIL", hints: "ABCEGIKLLLMQTX"),
      LogoModel(imageUrl: "reddit", answer: "REDDIT", hints: "BDDEEGHIPQRTUY")
    ],

    // car logos
    [
      LogoModel(
          imageUrl: "mercedes", answer: "MERCEDES", hints: "ACDEEEMNPRSSVW"),
      LogoModel(imageUrl: "toyota", answer: "TOYOTA", hints: "AFJKOOORTTTXYY"),
      LogoModel(imageUrl: "honda", answer: "HONDA", hints: "ADDDHJNNOOPTUY"),
      LogoModel(
          imageUrl: "volkswagen",
          answer: "VOLKSWAGEN",
          hints: "AEGKLMNOSTTVVW"),
      LogoModel(imageUrl: "audi", answer: "AUDI", hints: "ADGHIQU"),
      LogoModel(
          imageUrl: "bentley", answer: "BENTLEY", hints: "ABCEEGLMNPSTYZ"),
      LogoModel(imageUrl: "bmw", answer: "BMW", hints: "ABDEMNW"),
      LogoModel(imageUrl: "nissan", answer: "NISSAN", hints: "AACIJLNNOPSSTV"),
      LogoModel(imageUrl: "lexus", answer: "LEXUS", hints: "BCDEFKLLMOOSUX"),
      LogoModel(
          imageUrl: "hyundai", answer: "HYUNDAI", hints: "ADDGHIIINOUUYY"),
      LogoModel(imageUrl: "mazda", answer: "MAZDA", hints: "AACDDFGJMPTTVZ"),
      LogoModel(imageUrl: "kia", answer: "KIA", hints: "AGGIKQS"),
      LogoModel(imageUrl: "tesla", answer: "TESLA", hints: "AAEEILRRSTUVVX"),
      LogoModel(imageUrl: "ford", answer: "FORD", hints: "DFIINOR"),
      LogoModel(
          imageUrl: "chevrolet", answer: "CHEVROLET", hints: "CEEHJLLLORSTVX"),
      LogoModel(
          imageUrl: "renault", answer: "RENAULT", hints: "AEEGHILNPQRTUY"),
      LogoModel(
          imageUrl: "mitsubishi",
          answer: "MITSUBISHI",
          hints: "ABGHIIIJMNSSTU"),
      LogoModel(imageUrl: "suzuki", answer: "SUZUKI", hints: "ACIKLMOQSTUUVZ"),
      LogoModel(imageUrl: "fiat", answer: "FIAT", hints: "ADFHIJT"),
      LogoModel(
          imageUrl: "mustang", answer: "MUSTANG", hints: "ADGIKMNOQRSTUX"),
      LogoModel(imageUrl: "jaguar", answer: "JAGUAR", hints: "AADEGHIJKLRSUV"),
      LogoModel(imageUrl: "mini", answer: "MINI", hints: "AIIMNOR"),
      LogoModel(
          imageUrl: "ferrari", answer: "FERRARI", hints: "AACEFGIJLRRRSU"),
      LogoModel(imageUrl: "porsche", answer: "PORSCHE", hints: "ACEHILNOPRSTUX")
    ],

    // foods and drinks
    [
      LogoModel(
          imageUrl: "redbull", answer: "REDBULL", hints: "ABDEHLLMPRSUUV"),
      LogoModel(
          imageUrl: "starbucks", answer: "STARBUCKS", hints: "ABCDEHJKRSSTUX"),
      LogoModel(
          imageUrl: "mcdonalds", answer: "MCDONALDS", hints: "ABCDDGILLMNNOS"),
      LogoModel(
          imageUrl: "burgerking",
          answer: "BURGERKING",
          hints: "BDEGGIIKKLNRRU"),
      LogoModel(
          imageUrl: "pizzahut", answer: "PIZZAHUT", hints: "AADHILNPPPTUZZ"),
      LogoModel(
          imageUrl: "drpepper", answer: "DRPEPPER", hints: "BDDEEPPPRRSTYY"),
      LogoModel(imageUrl: "kfc", answer: "KFC", hints: "CFJKVWY"),
      LogoModel(imageUrl: "pepsi", answer: "PEPSI", hints: "EFGGILLPPSSSVX"),
      LogoModel(imageUrl: "subway", answer: "SUBWAY", hints: "AABFGHJQSUWWWY"),
      LogoModel(imageUrl: "nestle", answer: "NESTLE", hints: "ACEELNORSTTVXX"),
      LogoModel(
          imageUrl: "snickers", answer: "SNICKERS", hints: "CDEIJKNNPQRRSS"),
      LogoModel(
          imageUrl: "cocacola", answer: "COCACOLA", hints: "AAACCCIJKLMOOV"),
      LogoModel(
          imageUrl: "pringles", answer: "PRINGLES", hints: "EGIILMMNPPRSTU"),
      LogoModel(
          imageUrl: "dominospizza",
          answer: "DOMINOSPIZZA",
          hints: "ADIIIMNOOPQSZZ"),
      LogoModel(imageUrl: "oreo", answer: "OREO", hints: "EHNOORT"),
      LogoModel(
          imageUrl: "dunkindonuts",
          answer: "DUNKINDONUTS",
          hints: "DDDIKNNNOSTTUU"),
      LogoModel(
          imageUrl: "budweiser", answer: "BUDWEISER", hints: "BDEEGIKNNRSUVW"),
      LogoModel(imageUrl: "fanta", answer: "FANTA", hints: "AAABCCFNNOTVWX"),
      LogoModel(
          imageUrl: "nutella", answer: "NUTELLA", hints: "AEFIJJLLNRTTUW"),
      LogoModel(imageUrl: "kitkat", answer: "KITKAT", hints: "AABCIKKLMOTTTU"),
      LogoModel(
          imageUrl: "jackdaniel",
          answer: "JACKDANIEL",
          hints: "AABCDEIJKLNOPS"),
      LogoModel(imageUrl: "mentos", answer: "MENTOS", hints: "DDEMNOOQQSTUVY"),
      LogoModel(
          imageUrl: "monsterenergy",
          answer: "MONSTERENERGY",
          hints: "EEEGJMNNORRSTY"),
      LogoModel(imageUrl: "sprite", answer: "SPRITE", hints: "CCDEIJKMMPPRST"),
      LogoModel(imageUrl: "tictac", answer: "TICTAC", hints: "ACCGIJLMNRSTTU")
    ],

    // clothing brand
    [
      LogoModel(imageUrl: "adidas", answer: "ADIDAS", hints: "AABDDFGIKLSTTV"),
      LogoModel(imageUrl: "nike", answer: "NIKE", hints: "EHIKNPW"),
      LogoModel(
          imageUrl: "louisvuitton",
          answer: "LOUISVUITTON",
          hints: "BFIILNOOSTTUUV"),
      LogoModel(imageUrl: "barbie", answer: "BARBIE", hints: "AABBBBDEFIQRUW"),
      LogoModel(imageUrl: "reebok", answer: "REEBOK", hints: "BBBEEFHKKLOORU"),
      LogoModel(imageUrl: "puma", answer: "PUMA", hints: "AIMPPUV"),
      LogoModel(
          imageUrl: "giorgioarmani",
          answer: "GIORGIOARMANI",
          hints: "AAGGIIIMNOORRT"),
      LogoModel(
          imageUrl: "converse", answer: "CONVERSE", hints: "CEENOQRRSUVWXY"),
      LogoModel(imageUrl: "gucci", answer: "GUCCI", hints: "CCEGIJJKLNQQUV"),
      LogoModel(imageUrl: "chanel", answer: "CHANEL", hints: "AACDDEHLLNSUVY"),
      LogoModel(imageUrl: "levis", answer: "LEVIS", hints: "ACEGIKLOQSSUVW"),
      LogoModel(imageUrl: "rolex", answer: "ROLEX", hints: "ACEJKLLORTTVXX"),
      LogoModel(imageUrl: "zara", answer: "ZARA", hints: "AALRUXZ"),
      LogoModel(imageUrl: "fila", answer: "FILA", hints: "ABFILSV"),
      LogoModel(imageUrl: "rayban", answer: "RAYBAN", hints: "AABHJLNNRRSWYY"),
      LogoModel(
          imageUrl: "newbalance",
          answer: "NEWBALANCE",
          hints: "AABBCCEEELLNNW"),
      LogoModel(imageUrl: "vans", answer: "VANS", hints: "ADMNRSV"),
      LogoModel(
          imageUrl: "allstar", answer: "ALLSTAR", hints: "AABCDGKLLRSTUV"),
      LogoModel(
          imageUrl: "playboy", answer: "PLAYBOY", hints: "AABCLOPRSUUWYY"),
      LogoModel(
          imageUrl: "clavinklein",
          answer: "CLAVINKLEIN",
          hints: "ACDEIIKLLNNRSV"),
      LogoModel(
          imageUrl: "chicagobulls",
          answer: "CHICAGOBULLS",
          hints: "AABCCDGHHIKKLLNNORSUU"),
      LogoModel(
          imageUrl: "thenorthface",
          answer: "THENORTHFACE",
          hints: "ABCEEFGHHIKLNNOPRTTWX"),
      LogoModel(
          imageUrl: "michaelkors",
          answer: "MICHAELKORS",
          hints: "AABCEHIKLMNORS"),
      LogoModel(
          imageUrl: "hellokitty", answer: "HELLOKITTY", hints: "AEHGIIKLLMOTTY")
    ]
  ];

  // original level data
  List<LevelModel> levelData = [
    LevelModel(
        levelNumber: "Internet",
        noslogos: 26,
        nosSolvedlogos: 0,
        level: 0,
        isLocked: true),
    LevelModel(
        levelNumber: "Cars",
        noslogos: 24,
        isLocked: true,
        level: 1,
        nosSolvedlogos: 0),
    LevelModel(
        levelNumber: "Foods & Drinks",
        noslogos: 25,
        isLocked: true,
        level: 2,
        nosSolvedlogos: 0),
    LevelModel(
        levelNumber: "Fashion",
        noslogos: 24,
        isLocked: true,
        level: 3,
        nosSolvedlogos: 0),
  ];

  // getter method for level data
  List<LevelModel> get getLevelData => levelData;

  // getter method for logo data
  List<List<LogoModel>> get getLogoData => logoData;

  // getter method for hints
  int get getHints {
    int totalHints = levelData[0].hintsEarned +
        levelData[1].hintsEarned +
        levelData[2].hintsEarned;
    return totalHints;
  }

  // setter solved logos for level data
  void updateSolvedLogos(int currentLevel) {
    int count = 0;

    for (int i = 0; i < logoData[currentLevel].length; i++) {
      if (logoData[currentLevel][i].isSolved) {
        count++;
      }
    }
    levelData[currentLevel].nosSolvedlogos = count;
    print(count);
    notifyListeners();
  }

// setter method for logodata
  void updateSolvedLogosData(int level, int logo) {
    logoData[level][logo].isSolved = true;
    levelData[level].hintsEarned += logoData[level][logo].points;
    levelData[level].points += logoData[level][logo].points;
    notifyListeners();
  }
}
