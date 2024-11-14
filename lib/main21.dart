import 'package:flutter/material.dart';
import 'package:lab1/main13.dart';
import 'package:lab1/main14.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appName = 'GeeksForGeeks';
    return MaterialApp(
      title: appName,
      theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.green,
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.green,
            secondary: Colors.deepOrangeAccent,
          ),
          fontFamily: 'Georgia',
          textTheme: const TextTheme(
            displayLarge: TextStyle(
                fontSize: 72.0, fontWeight: FontWeight.bold),
            titleLarge: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
            bodyMedium: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
          )
      ),
      home: MyHomePage(title: appName),
    );
  }
}


class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(
        child: Container(
          color: Theme.of(context).colorScheme.secondary,
          child: Text(
            'Hello Dodo',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ),
      floatingActionButton: Theme(
          data: Theme.of(context).copyWith(colorScheme: Theme.of(context).colorScheme.copyWith(secondary: Colors.red)),
          child: FloatingActionButton(
            onPressed: (){},
            child: const Icon(Icons.arrow_circle_up),
          )
      )
    );
  }
}
