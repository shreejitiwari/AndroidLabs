import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main()=>MaterialApp(home: UrlLink(),);

class UrlLink extends StatefulWidget {
  const UrlLink({super.key});

  @override
  State<UrlLink> createState() => _UrlLinkState();
}

class _UrlLinkState extends State<UrlLink> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("URL Launcher"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () async{
              const url = 'https://www.google.com';
              if (await canLaunch(url)){
                await launch(url, forceWebView: true, enableJavaScript: true);
              }
              else{
                throw 'Could not launch $url';
              }
            },
            child: Center(
              child: Text("Want to Read Article, then Tap Here",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 25,
                fontWeight: FontWeight.w400,
              ),),
            ),
          )
        ],
      ),
    );
  }
}
