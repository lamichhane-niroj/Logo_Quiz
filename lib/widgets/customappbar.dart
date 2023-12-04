import 'package:flutter/material.dart';

PreferredSizeWidget customAppBar(
    BuildContext context, String title, int totalHints) {
  return PreferredSize(
    preferredSize: const Size(60, 60),
    child: Container(
      height: 60,
      width: 60,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 11, 117, 203),
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 36, 23, 132),
            Color.fromARGB(255, 11, 117, 203),
          ],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 30,
              )),
          Text(
            title,
            style: const TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.w700),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Row(
              children: [
                Icon(
                  Icons.lightbulb,
                  size: 48,
                  color: Colors.yellow[200],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("hints",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        )),
                    Text(totalHints.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        )),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
