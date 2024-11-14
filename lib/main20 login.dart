import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginDemo(),
    );
  }
}

class LoginDemo extends StatefulWidget {
  const LoginDemo({super.key});

  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Login"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 110.0),
              child: Center(
                child: SizedBox(
                  width: 200,
                  height: 100,
                  child: Image.network('https://img.freepik.com/free-vector/instagram-icon_1057-2227.jpg'),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Phone Number, email or username',
                  hintText: 'Enter valid email id as abc@gmail.com',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 15.0, right: 15.0, top: 15.0, bottom: 0
              ),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                  hintText: "Enter a secure password",
                ),
              ),
            ),
            SizedBox(
              height: 65,
              width: 360,

              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: ElevatedButton(
                    onPressed: (){
                      print("puchu Successful");
                    },
                    child: const Text("Log in", style: TextStyle(color: Colors.black, fontSize: 20,),)
                ),
              ),
            ),

            SizedBox(
              height: 50,
            ),
            Container(
              child: Center(
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 62),
                      child: Text("Forgot your login details ?"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 1.0),
                      child: InkWell(
                        onTap: (){
                          print("Hello");
                        },
                        child: Text(
                          "Get Help logging in.",
                          style: TextStyle(fontSize: 14, color: Colors.blueAccent),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

