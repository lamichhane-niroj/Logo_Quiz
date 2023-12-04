import 'package:flutter/material.dart';
import 'package:logoquiz/models/levelmodel.dart';
import 'package:logoquiz/views/gamepage.dart';
import 'package:logoquiz/providers/logoprovider.dart';
import 'package:logoquiz/widgets/customappbar.dart';
import 'package:provider/provider.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key, required this.currentLevelModel});

  final LevelModel currentLevelModel;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Consumer<LogoProvider>(
        builder: (context, value, child) => Scaffold(
          appBar: customAppBar(
              context, currentLevelModel.levelNumber, value.getHints),
          // show all the logo for current choosen level
          body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3),
            itemCount: value.getLogoData[currentLevelModel.level].length,
            itemBuilder: (context, index) => Container(
              margin: const EdgeInsets.all(15.0),
              child: GestureDetector(
                onTap: () {
                  // push to game page for a current logo on tapped
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GamePage(
                            currentIndex: index,
                            currentlogo: value
                                .getLogoData[currentLevelModel.level][index],
                            currentLevel: currentLevelModel),
                      ));
                },
                child: Stack(
                  children: [
                    Opacity(
                      opacity: value.getLogoData[currentLevelModel.level][index]
                              .isSolved
                          ? 0.2
                          : 1,
                      child: Image.asset(
                        "assets/level${currentLevelModel.level + 1}/${value.getLogoData[currentLevelModel.level][index].imageUrl}.png",
                      ),
                    ),
                    if (value
                        .getLogoData[currentLevelModel.level][index].isSolved)
                      Positioned(
                        bottom: 0,
                        child: Icon(
                          Icons.check_circle,
                          color: Colors.green[900],
                          size: 50,
                        ),
                      )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
