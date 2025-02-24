import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          centerTitle: true,
          title: Text('Hello World'),
          foregroundColor: Colors.white,
          backgroundColor: Colors.grey[850],
        ),
        body: Image(image: AssetImage('images/download.jpg')),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
          backgroundColor: Colors.red[600],
        ),
      ),
    );
  }
}
