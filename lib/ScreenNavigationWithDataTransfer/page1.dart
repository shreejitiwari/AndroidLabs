import 'package:flutter/material.dart';
import 'page2.dart';

void main(){
  runApp(
      MaterialApp(home: FirstScreen(),)
  );
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key?key}):super(key:key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  TextEditingController _firstNameController = TextEditingController();
  String fullNameString = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
      ),
      body: Column(
        children: [
          TextFormField(controller: _firstNameController,
          decoration: InputDecoration(
            hintText: "Enter any text here"
          ),),

          Center(
            child: TextButton(
              child: Text("Enter First Name"),
              onPressed: ()async{
                  final lastName = await Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                  SecondScreen(textFirstName: _firstNameController.text,)
                  ),
                  );
                  setState(() {
                    fullNameString = "Full name is : ${_firstNameController.text} $lastName";
                  });
                },
            ),
          ),
          Text(fullNameString),
        ],
      ),
    );
  }
}

