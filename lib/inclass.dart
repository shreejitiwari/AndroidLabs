import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image app"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(15),
              child: Text("Hello World, Text 1"),
            ),

            Padding(
              padding: EdgeInsets.only(left: 15, bottom: 20, right: 20, top: 10),
              child: Text("Hello World, Text 2"),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text("Hello World, Text 3"),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
              child: Text("Hello World, Text 4"),
            ),

            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(5),
              child: Text("Hello World, Text 5"),
            ),
          ],
        ),

      ),
    );
  }
}
