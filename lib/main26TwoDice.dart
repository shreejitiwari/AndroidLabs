import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: Center(
              child: Text(
                'Dicee',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 36.0,
                ),
              ),
            ),
            backgroundColor: Colors.red,
          ),
          body: DiceeApp(), // Use DiceeApp as the root widget
        ),
      ),
    ),
  );
}

class DiceeApp extends StatefulWidget {
  const DiceeApp({Key? key}) : super(key: key); // Use const constructor

  @override
  State<DiceeApp> createState() => _DiceeAppState();
}

class _DiceeAppState extends State<DiceeApp> {
  int leftDiceNumber = 1; // Use camelCase for variable names
  int rightDiceNumber = 1;
  int scorePlayer1 = 0;
  int scorePlayer2 = 0;

  void diceFaceChange() { // Use lowercase for function names
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;

    scorePlayer1 += leftDiceNumber; // Use shorthand assignment operator
    scorePlayer2 += rightDiceNumber;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 0),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    "Player 1",
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 28.0,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    "VS",
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 24.0,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    "Player 2",
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 28.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          diceFaceChange();
                        });
                      },
                      child: Image.asset('assets/collegeDice/dice$leftDiceNumber.png'),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          diceFaceChange();
                        });
                      },
                      child: Image.asset('assets/collegeDice/dice$rightDiceNumber.png'),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    "Score: $scorePlayer1",
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 28.0,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    "Score: $scorePlayer2",
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 28.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}