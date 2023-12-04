import 'package:flutter/material.dart';
import 'package:logoquiz/providers/logoprovider.dart';
import 'package:logoquiz/widgets/chooselevel.dart';
import 'package:logoquiz/widgets/customappbar.dart';
import 'package:provider/provider.dart';

class LevelPage extends StatelessWidget {
  const LevelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Consumer<LogoProvider>(
          builder: (context, value, child) => Scaffold(
                appBar: customAppBar(context, "choose level", value.getHints),
                // show all levels
                body: ListView.builder(
                    itemCount: value.getLevelData.length,
                    itemBuilder: (ctx, index) {
                      return Levels(
                        currentLevel: value.getLevelData[index],
                      );
                    }),
              )),
    );
  }
}
