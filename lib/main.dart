import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
        title:const Text('my first app'),
        centerTitle: true,
        backgroundColor: Colors.red[600]
    ),

    body: const Center(
      child: Text(
        'hello world',
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          letterSpacing: 3.0,
          color: Colors.green,
          fontFamily: 'Arial',
        ),
      ),
    ),
    floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () => {},
        child: const Text('click me'),
    ),
  ),
));