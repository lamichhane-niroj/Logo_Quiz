import 'package:flutter/material.dart';
import 'package:logoquiz/views/levelpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final double playButtonSize = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // background image
            Image.asset("assets/homepage.jpg"),
            // play button
            Positioned(
              top: 150,
              left: MediaQuery.of(context).size.width / 2 - playButtonSize / 2,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LevelPage(),
                      ));
                },
                child: Container(
                  height: playButtonSize,
                  width: playButtonSize,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 8, 81, 141),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(-6, 6),
                            blurRadius: 10,
                            color: Colors.black),
                        BoxShadow(
                            offset: Offset(1, 1),
                            blurRadius: 1,
                            color: Colors.grey),
                      ],
                      gradient: RadialGradient(colors: [
                        Color.fromARGB(255, 11, 117, 203),
                        Color.fromARGB(255, 36, 23, 132)
                      ])),
                  alignment: Alignment.center,
                  child: Text(
                    "PLAY",
                    style: TextStyle(
                        color: Colors.grey[300],
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            // credits
            const Positioned(
                left: 40,
                bottom: 200,
                child: Text(
                  "CREATED BY NIROJ LAMICHHANE",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
          ],
        ),
      ),
    );
  }
}
