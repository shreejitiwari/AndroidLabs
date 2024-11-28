import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Album> createAlbum(String title) async {
final http.Response response = await http.post(
	Uri.parse('https://jsonplaceholder.typicode.com/albums'),
	headers: <String, String>{
	'Content-Type': 'application/json; charset=UTF-8',
	},
	body: jsonEncode(<String, String>{
	'title': title,
	}),
);

if (response.statusCode == 201) {
	return Album.fromJson(json.decode(response.body));
} else {
	throw Exception('Failed to create album.');
}
}

class Album {
final int id;
final String title;

Album({required this.id, required this.title});

factory Album.fromJson(Map<String, dynamic> json) {
	return Album(
	id: json['id'],
	title: json['title'],
	);
}
}

void main() {
runApp(const MyApp());
}

class MyApp extends StatefulWidget {
const MyApp({Key? key}) : super(key: key);

@override
// ignore: library_private_types_in_public_api
_MyAppState createState() {
	return _MyAppState();
}
}

class _MyAppState extends State<MyApp> {
final TextEditingController _controller = TextEditingController();
late Future<Album> _futureAlbum;

@override
Widget build(BuildContext context) {
	return MaterialApp(
	title: 'Creating Data',
	theme: ThemeData(
		primarySwatch: Colors.blue,
	),
	home: Scaffold(
		appBar: AppBar(
		title: const Text('GeeksForGeeks'),
		backgroundColor: Colors.green,
		),
		body: Container(
		alignment: Alignment.center,
		padding: const EdgeInsets.all(8.0),
		// ignore: unnecessary_null_comparison
		child: (_futureAlbum == null)
			? Column(
				mainAxisAlignment: MainAxisAlignment.center,
				children: <Widget>[
					TextField(
					controller: _controller,
					decoration:
						const InputDecoration(hintText: 'Enter Title'),
					),
					ElevatedButton(
					child: const Text('Create Data'),
					onPressed: () {
						setState(() {
						_futureAlbum = createAlbum(_controller.text);
						});
					},
					),

			],
				)
			: FutureBuilder<Album>(
				future: _futureAlbum,
				builder: (context, snapshot) {
					if (snapshot.hasData) {
					return Text(snapshot.data!.title);
					} else if (snapshot.hasError) {
					return Text("${snapshot.error}");
					}

					return const CircularProgressIndicator();
				},
				),
		),
	),
	);
}
}
