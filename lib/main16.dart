import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Doraemon'),
          backgroundColor: Colors.greenAccent[400],
        ),
        
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            // box decoration widget
            decoration: BoxDecoration(
              image: const DecorationImage(
                  image: NetworkImage('https://wallpaperaccess.com/full/3161760.jpg'),
                  fit: BoxFit.cover,
              ),
              border: Border.all(
                color: Colors.green,
                width: 8,
              ),
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(5.0, 5.0),
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                ),
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(0.0, 0.0),
                  blurRadius: 0.0,
                  spreadRadius: 0.0,
                ),
              ],
            ),
          ),
        ),
      ),
    )
  );
}