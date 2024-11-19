import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main(){
  runApp(MaterialApp(
    home: UrlLink(),
    debugShowCheckedModeBanner: false,
  )
  );
}

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
              const url = "https://www.youtube.com/watch?v=etbfLTHD_VU";
              if (await canLaunch(url)){
                await launch(url, enableJavaScript: true, forceWebView: true,);
              }
              else{
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Could not launch URL')));
              }
            },
            child: const Center(
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
