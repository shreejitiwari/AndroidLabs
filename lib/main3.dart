import 'package:flutter/material.dart';

void main()=> runApp(MaterialApp(
  home: Home()
));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("Hello"),
      centerTitle: true,
      backgroundColor: Colors.deepOrange,
    ),

      body: Center(
      child: Text("Hello world! This is a Text Widget",
      style: TextStyle(
      fontSize: 35,
      color: Colors.brown,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.italic,
      letterSpacing: 8,
      wordSpacing: 20,
      backgroundColor: Colors.green,
      shadows: [
        Shadow(
          color: Colors.blueAccent,
          offset: Offset(2, 1),
          blurRadius: 10
      )]
      )
)
),
    );
  }
}
