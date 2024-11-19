import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2, // Two cards per row
      padding: EdgeInsets.all(16.0),
      // mainAxisSpacing: 16.0,
      // crossAxisSpacing: 16.0,
      children: <Widget>[
        _buildCard(Icons.home, 'Home', 'Go to the home screen', context),
        _buildCard(Icons.camera_alt, 'Camera', 'Open the camera', context),
        _buildCard(Icons.photo_library, 'Gallery', 'View your photos', context),
        _buildCard(Icons.exit_to_app, 'Exit', 'Exit the app', context),
      ],
    );
  }

  Widget _buildCard(IconData icon, String title, String description, BuildContext context) {
    return Card(
      color: Colors.red[100],
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),),
      child: InkWell(
        onTap: () {
          // Add navigation logic here if needed
          if (title == 'Exit') {
            // Handle exit functionality (e.g., Navigator.pop(context))
          } else {
            // Navigate to other screens based on title
          }
        },
        splashColor: Colors.redAccent,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(icon, size: 48.0),
          SizedBox(height: 16.0),
          Text(title, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
          SizedBox(height: 8.0),
          Text(description, textAlign: TextAlign.center),
        ],
      ),
    ),
    );
  }
}

