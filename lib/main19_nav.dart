import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: FirstScreen(),
  ));
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),

      body: Center(
        child: ElevatedButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondScreen(data: "Hello from first Screen")),);
            },
            child: Text("Go to Second Screen")
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  final String data;
  const SecondScreen({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(data),
            const SizedBox(height: 20,),
            ElevatedButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text("Back to First Screen")
            ),
          ],
        ),
      ),
    );
  }
}

