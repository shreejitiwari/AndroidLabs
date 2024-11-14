import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key?key}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
        backgroundColor: Colors.deepOrangeAccent,
      ),

      body: Center(
        child: ElevatedButton(
            child: Text("Home page"),
            onPressed: (){
              Navigator.pop(context);
            }

        ),
      ),

    );
  }
}
