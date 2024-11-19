import 'dart:async';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Splash Screen",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState(){
    super.initState();
    Timer(
      Duration(seconds: 3),
      ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SecondScreen()))
    );
  }
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: FlutterLogo(),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("App with Splash Screen"),),
      body: Center(
        child: Text("Home Page", textScaleFactor: 2,),
      ),
    );
  }
}


