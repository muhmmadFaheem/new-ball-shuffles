import 'dart:math';

import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  String ball1 = "assets/ball1.png";

  void shuffles() {
    print("Ball Shuffles");

    int random1 = Random().nextInt(5) + 1;
    print("Random 1 :$random1");
    setState(() {
      ball1 = "assets/ball$random1.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Ask Me Anything",
              style: TextStyle(fontSize: 50),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              ball1,
              height: 200,
              width: 200,
            ),
            ElevatedButton(
                onPressed: shuffles,
                child: Text(
                  "Ask Me",
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ),
      ),
    );
  }
}
