import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Slider",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: const SliderTutorial(title : "Slider"),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SliderTutorial extends StatefulWidget {
  const SliderTutorial({Key? key,required this.title}):super(key: key);
  final String title;
  @override
  _SliderTutorialState createState() => _SliderTutorialState();
}

class _SliderTutorialState extends State<SliderTutorial> {
  int age = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Slider(
              label: "Select Age",
              value: age.toDouble(),
              onChanged: (value){
                setState(() {
                  age = value.toInt();
                });
              },
              min: 5,
              max: 100,
          ),
          Text(
            "Your Age" + age.toString(),
            style: const TextStyle(
              fontSize: 32.0,
            ),
          )
        ],
      ),
    );
  }
}

