import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logoquiz/models/levelmodel.dart';
import 'package:logoquiz/models/logomodel.dart';
import 'package:logoquiz/providers/logoprovider.dart';
import 'package:logoquiz/widgets/customappbar.dart';
import 'package:provider/provider.dart';

class GamePage extends StatefulWidget {
  const GamePage(
      {super.key,
      required this.currentlogo,
      required this.currentLevel,
      required this.currentIndex});

  // game datas
  final LogoModel currentlogo;
  final LevelModel currentLevel;
  final int currentIndex;

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  // variables
  double size = 40;
  double fontsize = 27;
  int traverseIndex = 0;

  List<String> userAnswer = [];
  List<bool> removed = [];
  List<int> removedIndex = [];

  // next/previous logo
  void pushToNextLogo(int prevNext, final logoData) {
    Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation1, animation2) => GamePage(
              currentIndex: widget.currentIndex - prevNext,
              currentlogo: logoData[widget.currentLevel.level]
                  [widget.currentIndex - prevNext],
              currentLevel: widget.currentLevel),
          transitionDuration: Duration.zero,
          reverseTransitionDuration: Duration.zero,
        ));
  }

  // reset the tiles
  void resetTiles() {
    for (int i = 0; i <= widget.currentlogo.answer.length; i++) {
      userAnswer.add("0");
      removedIndex.add(100);
    }

    for (int i = 0; i < widget.currentlogo.hints.length; i++) {
      removed.add(false);
    }
  }

  @override
  Widget build(BuildContext context) {
    // auto adjust tiles according to the size of answer
    if (widget.currentlogo.answer.length > 11) {
      fontsize = 22;
      size = 26;
    } else if (widget.currentlogo.answer.length > 9) {
      size = 30;
      fontsize = 28;
    } else if (widget.currentlogo.answer.length > 8) {
      size = 38;
    }

    resetTiles();
    return SafeArea(
      child: Consumer<LogoProvider>(
        builder: (context, value, child) => Scaffold(
          appBar: customAppBar(
              context,
              "logo ${widget.currentIndex + 1} / ${widget.currentLevel.noslogos}",
              value.getHints),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // backward button
                  IconButton(
                    onPressed: () {
                      if (widget.currentIndex > 0) {
                        pushToNextLogo(1, value.getLogoData);
                      }
                    },
                    icon: const Icon(
                      CupertinoIcons.arrow_left,
                      size: 35,
                    ),
                  ),

                  // logo image
                  widget.currentlogo.isSolved
                      ? Image.asset(
                          "assets/level${widget.currentLevel.level + 1}/${widget.currentlogo.imageUrl}logo.png",
                          height: 200,
                          width: 200,
                        )
                      : Image.asset(
                          "assets/level${widget.currentLevel.level + 1}/${widget.currentlogo.imageUrl}.png",
                          height: 200,
                          width: 200,
                        ),

                  // forward button
                  IconButton(
                    onPressed: () {
                      if (widget.currentIndex <
                          widget.currentLevel.noslogos - 1) {
                        pushToNextLogo(-1, value.getLogoData);
                      }
                    },
                    icon: const Icon(
                      CupertinoIcons.arrow_right,
                      size: 35,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              // show result if solved else make to play
              !widget.currentlogo.isSolved
                  ? Expanded(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              for (int i = 0;
                                  i < widget.currentlogo.answer.length;
                                  i++)
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      userAnswer[i] = "0";
                                      removed[removedIndex[i]] = false;
                                      int length =
                                          widget.currentlogo.answer.length;
                                      for (int i = 0; i <= length; i++) {
                                        if (userAnswer[i] == "0") {
                                          traverseIndex = i;
                                          break;
                                        }
                                      }
                                    });
                                  },
                                  child: Container(
                                    margin: const EdgeInsets.all(2.0),
                                    height: size,
                                    width: size,
                                    color:
                                        const Color.fromARGB(255, 71, 59, 59),
                                    alignment: Alignment.center,
                                    child: userAnswer[i] == "0"
                                        ? null
                                        : Text(
                                            userAnswer[i],
                                            style: TextStyle(
                                                fontSize: fontsize,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white),
                                          ),
                                  ),
                                ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              const Spacer(),
                              // hint box
                              Container(
                                height: 55,
                                width: 200,
                                decoration: BoxDecoration(
                                  color: Colors.green[900],
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                alignment: Alignment.center,
                                child: const Text(
                                  "Use hints",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 24),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              // cancel all tiles data
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    userAnswer = [];
                                    removedIndex = [];
                                    removed = [];
                                    traverseIndex = 0;
                                    resetTiles();
                                  });
                                },
                                child: Container(
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                    color: Colors.red[900],
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: const Icon(
                                    Icons.cancel_outlined,
                                    color: Colors.white,
                                    size: 34,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              // show points
                              Container(
                                height: 55,
                                width: 55,
                                decoration: BoxDecoration(
                                  color: Colors.green[900],
                                  border: Border.all(
                                      color: Colors.black,
                                      width: 4,
                                      style: BorderStyle.solid),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  " ${widget.currentlogo.points}\npts",
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              const Spacer()
                            ],
                          ),
                          Expanded(
                            child: GridView.builder(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                itemCount: widget.currentlogo.hints.length,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 7),
                                itemBuilder: (context, index) {
                                  return !removed[index]
                                      ? GestureDetector(
                                          onTap: traverseIndex <
                                                  widget
                                                      .currentlogo.answer.length
                                              ? () {
                                                  setState(() {
                                                    removedIndex[
                                                        traverseIndex] = index;
                                                    removed[index] = true;
                                                    userAnswer[traverseIndex] =
                                                        widget.currentlogo
                                                            .hints[index];

                                                    bool check = true;
                                                    //check answer
                                                    for (int i = 0;
                                                        i <
                                                            widget.currentlogo
                                                                .answer.length;
                                                        i++) {
                                                      if (userAnswer[i] !=
                                                          widget.currentlogo
                                                              .answer[i]) {
                                                        check = false;
                                                        break;
                                                      }
                                                    }

                                                    if (check) {
                                                      widget.currentlogo
                                                          .isSolved = true;
                                                      value.updateSolvedLogos(
                                                          widget.currentLevel
                                                              .level);
                                                      value.updateSolvedLogosData(
                                                          widget.currentLevel
                                                              .level,
                                                          widget.currentIndex);
                                                    }

                                                    for (int i = 0;
                                                        i <=
                                                            widget.currentlogo
                                                                .answer.length;
                                                        i++) {
                                                      if (userAnswer[i] ==
                                                          "0") {
                                                        traverseIndex = i;
                                                        break;
                                                      }
                                                    }
                                                  });
                                                }
                                              : null,
                                          child: Container(
                                            margin: const EdgeInsets.all(4.0),
                                            color: Colors.grey[500],
                                            alignment: Alignment.center,
                                            child: Text(
                                              widget.currentlogo.hints[index],
                                              style: const TextStyle(
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        )
                                      : Container(
                                          color: Colors.white,
                                        );
                                }),
                          ),
                        ],
                      ),
                    )
                  : Column(
                      children: [
                        Text(
                          widget.currentlogo.answer,
                          style: const TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 32),
                        ),
                        const SizedBox(
                          height: 80,
                        ),
                        Container(
                          margin: const EdgeInsets.all(15),
                          padding: const EdgeInsets.only(top: 15, bottom: 15),
                          decoration: BoxDecoration(
                              color: Colors.green,
                              gradient: const LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color.fromARGB(250, 2, 250, 10),
                                    Color.fromARGB(255, 9, 76, 27),
                                  ]),
                              borderRadius: BorderRadius.circular(10)),
                          alignment: Alignment.topCenter,
                          child: Column(
                            children: [
                              Text(
                                "You got ${widget.currentlogo.points} points",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    color: Color.fromARGB(255, 81, 71, 71)),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Consumer<LogoProvider>(
                                      builder: (context, value, child) =>
                                          ElevatedButton(
                                              onPressed: () {
                                                if (widget.currentIndex <
                                                    widget.currentLevel
                                                            .noslogos -
                                                        1) {
                                                  pushToNextLogo(
                                                      -1, value.getLogoData);
                                                }
                                              },
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor: Colors.black,
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 15,
                                                      vertical: 8)),
                                              child: const Text(
                                                "NEXT",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 23),
                                              )),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    )
            ],
          ),
        ),
      ),
    );
  }
}
