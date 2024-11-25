import 'package:flutter/material.dart';
import 'dart:math';

void main()=>runApp(
    MaterialApp(
      home: BallPage(),
      debugShowCheckedModeBanner: false,
    )
);

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text("Magic Ball Game", style: TextStyle(color: Colors.white),),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key?key}):super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
          onPressed: (){
            setState(() {
              ballNumber = Random().nextInt(6)+1;
            });
          },
          child: Image.asset('assets/diceImage/face$ballNumber.png')
      ),
    );
  }
}
