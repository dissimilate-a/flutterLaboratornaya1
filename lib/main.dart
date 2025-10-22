import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  // Обработчик нажатия на кнопку
  void _onPressed() {
      // print('Button pressed!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Главный экран приложения
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
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
              ),
              SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset('assets/images/first.jpg', width: 200, height: 200, fit: BoxFit.cover),
                      SizedBox(width: 50),
                      Image.asset('assets/images/second.jpg', width: 200, height: 200, fit: BoxFit.cover),
                      SizedBox(width: 50),
                      Image.asset('assets/images/3.jpg', width: 200, height: 200, fit: BoxFit.cover),
                      SizedBox(width: 50),
                      Image.asset('assets/images/four.jpg', width: 200, height: 200, fit: BoxFit.cover),
                      SizedBox(width: 50),
                      Image.asset('assets/images/five.jpg', width: 200, height: 200, fit: BoxFit.cover),
                      SizedBox(width: 50),
                      Image.asset('assets/images/six.jpg', width: 200, height: 200, fit: BoxFit.cover),
                      SizedBox(width: 50),
                      Image.asset('assets/images/seven.jpg', width: 200, height: 200, fit: BoxFit.cover),
                      SizedBox(width: 50),
                      Image.asset('assets/images/8.jpg', width: 200, height: 200, fit: BoxFit.cover)
                    ],
                  ),
              ),
              SizedBox(height: 100),
              Container(
                width: 280,
                height: 200,
                margin: EdgeInsets.only(bottom: 70),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 0, 200),
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 255, 0, 200).withValues(alpha: 0.8), 
                      blurRadius: 80, 
                      spreadRadius: 5, 
                      offset: Offset(0, 0), 
                    ),
                  ],
                  border: Border.all(
                    color: Colors.white.withValues(alpha: 0.3),
                    width: 3,
                  ),
                ),
                child: Center(
                  child:  Text('NEON', style: TextStyle( fontWeight: FontWeight.bold, fontSize: 20, fontFamily: 'Michroma'), )
                ),
              )
            ],
          ),
      ),
    );
  }
}
       