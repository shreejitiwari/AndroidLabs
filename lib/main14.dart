import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool? valueFirst = false;
  bool? valueSecond = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Checkbox Example'),),
        body: Container(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  SizedBox(width: 10,),
                  Text("CheckBox without header and subtitle : ", style: TextStyle(fontSize: 17.0),),
                  Checkbox(
                      checkColor: Colors.greenAccent,
                      activeColor: Colors.red,
                      value: this.valueFirst,
                      onChanged: (bool? val){
                        setState(() {
                          this.valueFirst = val;
                        });
                      }
                  ),

                  Checkbox(
                      value: this.valueSecond,
                      onChanged: (bool? val){
                        setState(() {
                          this.valueSecond = val;
                        });
                      }
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
