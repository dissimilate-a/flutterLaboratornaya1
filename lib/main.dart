import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column (
          children: [
            Container(width: 500, height: 100, color: Colors.pink[200],),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('текст1'),
              Text('текст2'),
              Text('текст3'),
            ],
            ),
            Container(width: 1000, height: 100, color: Colors.blue[300],)
          ],
        ),
      ),
    );
  }
}
