import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Ninja()));
}

class Ninja extends StatefulWidget {
  const Ninja({super.key});

  @override
  State<Ninja> createState() => _NinjaState();
}

class _NinjaState extends State<Ninja> {
  int ninjaLevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ninja ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('images/download.jpg'),
                radius: 60.0,
              ),
            ),
            SizedBox(height: 60.0),
            Text('Name', style: TextStyle(color: Colors.grey, fontSize: 15.0)),
            Text(
              'Hab',
              style: TextStyle(
                color: Colors.amber,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(color: Colors.grey, fontSize: 15.0),
            ),
            Text(
              '$ninjaLevel',
              style: TextStyle(
                color: Colors.amber,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              children: [
                Icon(Icons.email, color: Colors.grey, size: 30.0),
                SizedBox(width: 10.0),

                Text(
                  'hab@gmail.com',
                  style: TextStyle(color: Colors.grey, fontSize: 20.0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
