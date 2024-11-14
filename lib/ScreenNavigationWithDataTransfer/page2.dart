import 'package:flutter/material.dart';
class SecondScreen extends StatefulWidget {
  final String? textFirstName;
  const SecondScreen({Key? key, required this.textFirstName}): super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  TextEditingController _lastNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Column(
        children: [
          Text(widget.textFirstName!),
          TextFormField(
            controller: _lastNameController,
            decoration: InputDecoration(
              hintText: "Enter last name here"
            ),
          ),
          Center(
            child: TextButton(
              child: Text("Send to first"),
              onPressed: (){
                Navigator.of(context).pop(_lastNameController.text);
              },
            ),
          )
        ],
      ),
    );
  }
}
