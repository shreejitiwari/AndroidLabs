import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      title: 'CustomScrollViewExample',
      home: CustomScrollViewExample(),
    );
  }
}

class CustomScrollViewExample extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CustomScrollViewExample'),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          // Changed 'Silver' to 'slivers'
          SliverAppBar(
            // Corrected SilverAppBar to SliverAppBar
            expandedHeight: 200.0,
            floating: false,
            pinned: true, // Corrected pinned.true to pinned:true
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'CustomScrollView',
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
              background: Image.network(
                'https://th.bing.com/th/id/R.34475d1135818c68303ab65b3f7c3f39?rik=HjqakADWWuoncQ&riu=http%3a%2f%2fpluspng.com%2fimg-png%2fdog-png-transparent-background-puppy-png-image-900.png&ehk=HMxjkQa4D%2bvrCEMMyEEpnavJyg7cS5689kkQjR0TWjA%3d&risl=&pid=ImgRaw&r=0',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            // Corrected SilverList to SliverList
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return ListTile(
                  title: Text('item $index'),
                );
              },
              childCount: 50,
            ),
          ),
        ],
      ),
    );
  }
}