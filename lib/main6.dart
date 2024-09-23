import 'dart:ffi';

import 'package:flutter/material.dart';

void main()=> runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Logo"),
          backgroundColor: Colors.pinkAccent,
        ),

        body: Center(
          child: FlutterLogo(
            size: 200,
            style: FlutterLogoStyle.stacked,
            textColor: Colors.pink,
          )
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: ()=>{},
          backgroundColor: Colors.green,
          child: Text("Click"),
        ),

        bottomNavigationBar: BottomAppBar(
          color: Colors.pinkAccent,
        ),


      ),

    );
  }
}
