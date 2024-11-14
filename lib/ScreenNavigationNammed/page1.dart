import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: 'Named Route Navigation',
    theme: ThemeData(
      primarySwatch: Colors.green,colorScheme: ColorScheme.dark()
    ),
    
    initialRoute: '/',
    routes: {
      '/' : (context)=>HomeScreen(),
      '/second': (context)=> SecondScreen(),
    },
  ));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child : Text('Next page'),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,),
          onPressed : (){
            Navigator.pushNamed(context, '/second');
          }
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: ElevatedButton(
            child : Text('Home Page'),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,),
            onPressed : (){
              Navigator.pushNamed(context, '/');
            }
        ),
      ),
    );
  }
}
