// BUl page top-tiki

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   bool isWorldSelected = false;
  bool isRegionSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7F7FCA),
      
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Player', // Текст "Player"
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, fontFamily: 'Inknut Antiqua'),
        ),
        ElevatedButton(
          onPressed: () {
            // Выполните действие, специфичное для пользователя
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero, // Удалите стандартный отступ
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // Установите радиус скругления 5
              side: BorderSide(color: Colors.black, width: 2), // Добавьте рамку черного цвета и шириной 2
            ),
            backgroundColor: Color.fromARGB(240, 191, 191, 255), // Установите цвет фона кнопки
          ),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              mainAxisSize: MainAxisSize.min, // Минимизируйте ширину столбца
              children: [
                Image.asset('assets/Group.png', height: 30, width: 30), // Иконка
                SizedBox(height:0), // Добавьте немного пространства между иконкой и текстом
                Text('50', style: TextStyle(color: Colors.black, fontFamily: "Inknut Antiqua", fontSize: 10)), // Текст
              ],
            ),
          ),
        ),
      ],
    ),
    Column(
      
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Text(
      '50', // Текст "Player"
      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, fontFamily: 'Inknut Antiqua'),
    ),
    SizedBox(width: 5.0),
    Image.asset('assets/tiyn.png', height: 24, width: 24),
  ],
),
        
        ElevatedButton(
          onPressed: () {
            // Perform another action specific to the user
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // Установите радиус скругления 5
              side: BorderSide(color: Colors.black, width: 2), // Добавьте рамку черного цвета и шириной 2
            ),
            backgroundColor: Color.fromARGB(240, 191, 191, 240), // Установите цвет фона кнопки
          ),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              mainAxisSize: MainAxisSize.min, // Минимизируйте ширину столбца
              children: [
                Image.asset('assets/sandyq.png', height: 30, width: 30), // Иконка
                SizedBox(height: 0), // Добавьте немного пространства между иконкой и текстом
                Text('CLAIM', style: TextStyle(color: Colors.black, fontFamily: "Inknut Antiqua", fontSize: 10)), // Текст
              ],
            ),
          ),
        ),
      ],
    ),
  ],
),

              SizedBox(height: 10.0),
              Center(
                child: Text(
                  'Puzzle\nEscape', // Replace with user's name
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, fontFamily: "Inknut Antiqua"),
                ),
              ),
              SizedBox(height: 16.0),
              // Add buttons or actions for user-specific features
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Выполните действие, специфичное для пользователя
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero, // Удалите стандартный отступ
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15), // Установите радиус скругления 5
                      side: BorderSide(color: Colors.black, width: 2), // Добавьте рамку черного цвета и шириной 2
                    ),
                    backgroundColor: Color.fromARGB(240, 191, 191, 240), // Установите цвет фона кнопки
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16), // Добавьте отступы для текста
                    child: Column(
                      mainAxisSize: MainAxisSize.min, // Минимизируйте ширину столбца
                      children: [
                        SizedBox(height: 10), // Добавьте немного пространства между иконкой и текстом
                        Text('Jigsaw Puzzle', style: TextStyle(fontSize: 22.0, color: Colors.black, fontFamily: "Inknut Antiqua"),), // Текст
                      ],
                    ),
                  ),
                ),
              ),
SizedBox(height: 16.0),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Выполните действие, специфичное для пользователя
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero, // Удалите стандартный отступ
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15), // Установите радиус скругления 5
                      side: BorderSide(color: Colors.black, width: 2), // Добавьте рамку черного цвета и шириной 2
                    ),
                    backgroundColor: Color.fromARGB(240, 191, 191, 240), // Установите цвет фона кнопки
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16), // Добавьте отступы для текста
                    child: Column(
                      mainAxisSize: MainAxisSize.min, // Минимизируйте ширину столбца
                      children: [
                        SizedBox(height: 10), // Добавьте немного пространства между иконкой и текстом
                        Text('     Labirint      ', style: TextStyle(fontSize: 22.0, color: Colors.black, fontFamily: "Inknut Antiqua"),), // Текст
                      ],
                    ),
                  ),
                ),
              ),
SizedBox(height: 16.0),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Выполните действие, специфичное для пользователя
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero, // Удалите стандартный отступ
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15), // Установите радиус скругления 5
                      side: BorderSide(color: Colors.black, width: 2), // Добавьте рамку черного цвета и шириной 2
                    ),
                    backgroundColor: Color.fromARGB(240, 191, 191, 240), // Установите цвет фона кнопки
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16), // Добавьте отступы для текста
                    child: Column(
                      mainAxisSize: MainAxisSize.min, // Минимизируйте ширину столбца
                      children: [
                        SizedBox(height: 10), // Добавьте немного пространства между иконкой и текстом
                        Text('   Crossword    ', style: TextStyle(fontSize: 22.0, color: Colors.black, fontFamily: "Inknut Antiqua"),), // Текст
                      ],
                    ),
                  ),
                ),
              ),
SizedBox(height: 16.0),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Выполните действие, специфичное для пользователя
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero, // Удалите стандартный отступ
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15), // Установите радиус скругления 5
                      side: BorderSide(color: Colors.black, width: 2), // Добавьте рамку черного цвета и шириной 2
                    ),
                    backgroundColor: Color.fromARGB(240, 191, 191, 240), // Установите цвет фона кнопки
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16), // Добавьте отступы для текста
                    child: Column(
                      mainAxisSize: MainAxisSize.min, // Минимизируйте ширину столбца
                      children: [
                        SizedBox(height: 10), // Добавьте немного пространства между иконкой и текстом
                        Text(' Minesweeper', style: TextStyle(fontSize: 22.0, color: Colors.black, fontFamily: "Inknut Antiqua"),), // Текст
                      ],
                    ),
                  ),
                ),
              ),
SizedBox(height: 16.0),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Выполните действие, специфичное для пользователя
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero, // Удалите стандартный отступ
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15), // Установите радиус скругления 5
                      side: BorderSide(color: Colors.black, width: 2), // Добавьте рамку черного цвета и шириной 2
                    ),
                    backgroundColor: Color.fromARGB(240, 191, 191, 240), // Установите цвет фона кнопки
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16), // Добавьте отступы для текста
                    child: Column(
                      mainAxisSize: MainAxisSize.min, // Минимизируйте ширину столбца
                      children: [
                        SizedBox(height: 10), // Добавьте немного пространства между иконкой и текстом
                        Text(' Match Game  ', style: TextStyle(fontSize: 22.0, color: Colors.black, fontFamily: "Inknut Antiqua"),), // Текст
                      ],
                    ),
                  ),
                ),
              ),
SizedBox(height: 16.0),


            ],
          ),
        ),
      ),
    );
  }
}
