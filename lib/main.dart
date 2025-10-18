import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  // Обработчик нажатия на кнопку
  void _onPressed() {
      print('Button pressed!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Главный экран приложения
      home: Scaffold(
        // Плавающая кнопка действия с обработчиком нажатия
        floatingActionButton: FloatingActionButton(onPressed: _onPressed, 
        backgroundColor: Colors.pink[100],),
        // Основное содержимое экрана
        body: Column (
          children: [
            // Первый контейнер с фиксированными шириной, высотой и цветом
            Container(width: 500, height: 100, color: Colors.pink[200],),
            // Строка с тремя текстовыми элементами
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('текст1'),
                Text('текст2'),
                Text('текст3'),
              ],
            ),
            // Второй контейнер с фиксированными шириной, высотой и цветом
            Container(width: 1000, height: 100, color: Colors.blue[300],),
            // Расширяющийся элемент, используется для заполнения доступного пространства в контейнерах
            Expanded(
              child: 
                Row(
                  children: [
                    // Круглый аватар с изображением из сети 
                    CircleAvatar(radius: 90, backgroundImage: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),),
                    // Круглый аватар с желтым фоном
                    CircleAvatar(radius: 50, backgroundColor: Colors.yellow[400])
                    ],
                )
              )
            ],
          ),
      ),
    );
  }
}
       