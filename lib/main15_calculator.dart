import 'package:flutter/material.dart';

void main()=>runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Calculator",
      theme: new ThemeData(
        primarySwatch: Colors.brown,
      ),

      home: new MyHomePage(title: 'Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, String? title}) : super(key:key);
  final String title = "Calculator";

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String output = '0';
  String _output = '0';
  double num1 = 0.0;
  double num2 = 0.0;
  String operand = '';

  buttonPressed(String buttonText) {
    if (buttonText == "CLEAR") {
      _output = '0';
      num1 = 0.0;
      num2 = 0.0;
      operand = '';
    }

    else if (buttonText == '+' || buttonText == '-' || buttonText == '/' ||
        buttonText == 'X') {
      num1 = double.parse(output);
      operand = buttonText;
      _output = '0';
    }

    else if (buttonText == '.') {
      if (_output.contains('.')) {
        print("Already contains a decimal");
        return;
      }

      else {
        _output = _output + buttonText;
      }
    }

    else if (buttonText == '=') {
      num2 = double.parse(output);

      if (operand == '+') {
        _output = (num1 + num2).toString();
      }

      if (operand == '-') {
        _output = (num1 - num2).toString();
      }

      if (operand == 'X') {
        _output = (num1 * num2).toString();
      }

      if (operand == '/') {
        _output = (num1 / num2).toString();
      }

      num1 = 0.0;
      num2 = 0.0;
      operand = "";
    }
    else {
      _output = _output + buttonText;
    }

    print(_output);
    setState(() {
      output = double.parse(_output).toStringAsFixed(2);
    });
  }

    Widget buildButton(String buttonText) {
      return new Expanded(
        child: new OutlinedButton(
          child: new Text(
            buttonText,
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          onPressed: () => buttonPressed(buttonText),
        ),
      );
    }

    @override
    Widget build(BuildContext context) {
      return new Scaffold(
        appBar: new AppBar(
          title: new Text(widget.title),
        ),

        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 12.0),
                child: Text(
                  output,
                  style: TextStyle(
                    fontSize: 48.0,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
              new Divider(),
              //new Expanded(child: new Divider(),),

              new Column(
                children: [
                new Row(children: [
                  buildButton('7'),
                  buildButton('8'),
                  buildButton('9'),
                  buildButton('/'),
                ],),

                new Row(children: [
                  buildButton('4'),
                  buildButton('5'),
                  buildButton('6'),
                  buildButton('X'),
                ],),

                new Row(children: [
                  buildButton('1'),
                  buildButton('2'),
                  buildButton('3'),
                  buildButton('-'),
                ],),

                new Row(children: [
                  buildButton('.'),
                  buildButton('0'),
                  buildButton('00'),
                  buildButton('+'),
                ],),

                new Row(children: [
                  buildButton("CLEAR"),
                  buildButton('='),
                ],)
              ],)
            ],
          ),),);
    }
  }

