import 'package:flutter/material.dart';
import 'WelcomeScreen.dart';
import 'HomeScreen.dart';
import 'FirstScreen.dart';
import 'SecondScreen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/home',
      routes: {
        '/' : (context)=> const FirstScreen(),
        '/second' : (context)=> const SecondScreen(),
        '/home' : (context)=>  const HomeScreen(),
        '/welcome' : (context)=> const WelcomeScreen(),
      },
    );
  }
}
