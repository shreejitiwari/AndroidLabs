import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.amberAccent,
            child: const Text("Hello, I am a container"),
          ),
        ),
      ),
    ),
  );
}