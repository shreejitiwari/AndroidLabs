import 'package:flutter/material.dart';

void main()=> runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Container example"),
          backgroundColor: Colors.pinkAccent,
        ),

        body: Center(
          child: Container(
            width: 100,
            height: 100,
            child: const Text("I am inside a container",
            style: TextStyle(
              fontSize: 20,
              color: Color(0xfff9f9f7),
              wordSpacing: 10,
              backgroundColor: Colors.deepOrange,
            ),
            ),
            color: Colors.amberAccent,
          ),
        ),
      ),
    );
  }
}
