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
      body: Row(
        children: <Widget>[
          Expanded(child: Image.asset('assets/img1.jpg')),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.cyan,
              child: Text('1'),
            )
          ),
          Expanded(
              flex: 2,
              child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.pinkAccent,
              child: Text('2'),
              ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.pinkAccent,
              child: Text('3'),
            ),
          ),

        ],
      ),
    );
  }
}
