import 'package:flutter/material.dart';
import 'package:lab1/main13.dart';

void main(){
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter TextField Example"),
      ),

      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "User Name",
                  hintText: "Enter your Name",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                  hintText: "Enter Password",
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Set button color
                textStyle: TextStyle(color: Colors.white), // Set text color
              ),
              child: Text("Sign In"),
              onPressed: (){
                showDialog(
                    context: context,
                    builder: (context){
                      return AlertDialog(
                        title: Text("Alert Message"),
                        // retrieve the text which the user has entered by using the TextEditingController
                        content: Text(nameController.text),
                        actions: <Widget>[
                          new ElevatedButton(
                            child : new Text("OK"),
                            onPressed: (){
                              Navigator.of(context).pop();
                            }
                          )
                        ],
                      );
                    }
                );
              },

            ),
          ],
        ),
      ),
    );
  }
}
