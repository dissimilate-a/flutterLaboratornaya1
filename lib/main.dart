import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

void _onPressed() {
    print('Button pressed!');
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: _onPressed,
        backgroundColor: Colors.pink[100],),
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
            Container(width: 1000, height: 100, color: Colors.blue[300],),
            Expanded(child: 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(radius: 90, backgroundImage: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),),
                CircleAvatar(radius: 50, backgroundColor: Colors.yellow[400])
                ],
            ))
          ],
        ),
      ),
    );
  }
}
       