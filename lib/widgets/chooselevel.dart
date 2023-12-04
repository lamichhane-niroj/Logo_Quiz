import 'package:flutter/material.dart';
import 'package:logoquiz/models/levelmodel.dart';
import 'package:logoquiz/views/menupage.dart';
import 'package:logoquiz/providers/logoprovider.dart';
import 'package:provider/provider.dart';

class Levels extends StatelessWidget {
  const Levels({super.key, required this.currentLevel});

  final LevelModel currentLevel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        // solved levels /  total levels
        leading: Consumer<LogoProvider>(
          builder: (context, value, child) => CircleAvatar(
            radius: 40,
            child: Center(
              child: Text(
                "${value.getLevelData[currentLevel.level].nosSolvedlogos}/${value.getLevelData[currentLevel.level].noslogos}",
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        onTap: () {
          // push to menu page for current level when tapped
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (ctx) => MenuPage(
                        currentLevelModel: currentLevel,
                      )));
        },
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              currentLevel.levelNumber,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            Text(
              "points ${currentLevel.points}",
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ],
        ),
        // progress bar to show progress
        subtitle: Consumer<LogoProvider>(
          builder: (context, value, child) => LinearProgressIndicator(
            color: const Color.fromARGB(255, 21, 209, 27),
            minHeight: 17,
            backgroundColor: Colors.grey[500],
            borderRadius: BorderRadius.circular(5),
            value: value.getLevelData[currentLevel.level].nosSolvedlogos /
                value.getLevelData[currentLevel.level].noslogos,
          ),
        ));
  }
}
