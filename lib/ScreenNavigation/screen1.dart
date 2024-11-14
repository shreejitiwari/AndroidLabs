import 'package:flutter/material.dart';
import 'screen2.dart';

void main(){
  runApp(const MaterialApp(
    home: HomeRoute(),
  ),);
}

class HomeRoute extends StatelessWidget {
  const HomeRoute({Key? key}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.deepOrangeAccent,
      ),

      body: Center(
        child: ElevatedButton(
          child: Text("Next page"),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => SecondRoute()),);
          }

        ),
      ),

    );


  }
}
