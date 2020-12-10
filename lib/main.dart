import 'dart:ui';
import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Ball(),
      ),
    );

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade300,
      appBar: AppBar(
        title: Text('Magic 8 ball challenge'),
        backgroundColor: Colors.green.shade500,
      ),
      body: Container(
        child: Center(
            child: FlatButton(
                onPressed: () {
                  setState(() {
                    generateRandomNumber();
                  });
                },
                child: Image.asset("images/ball$ballNumber.png"))),
      ),
    );
  }

  void generateRandomNumber() {
    ballNumber = Random().nextInt(5) + 1;
    print('Number is $ballNumber');
  }
}
