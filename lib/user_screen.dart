import 'package:flutter/material.dart';

class UserScreen extends StatefulWidget {
  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
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
                          Image.asset('assets/edit.png', height: 30, width: 30), // Иконка
                          SizedBox(height:2), // Добавьте немного пространства между иконкой и текстом
                          Text('EDIT', style: TextStyle(color: Colors.black, fontFamily: "Inknut Antiqua", fontSize: 10)), // Текст
                        ],
                      ),
                    ),
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
                          Image.asset('assets/logout.png', height: 30, width: 30), // Иконка
                          SizedBox(height: 2), // Добавьте немного пространства между иконкой и текстом
                          Text(' LOGOUT ', style: TextStyle(color: Colors.black, fontFamily: "Inknut Antiqua", fontSize: 10)), // Текст
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5.0),
              // User avatar (replace with actual image)
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0), // Устанавливаем радиус закругления углов
                    color: Color.fromARGB(240, 191, 191, 240), // Цвет квадрата
                    border: Border. all(color: Colors. black, width: 5) ,
                  ),
                  width: 120, // Установите ширину квадрата
                  height: 131, // Установите высоту квадрата, чтобы учесть высоту текста
                  padding: EdgeInsets.all(5), // Устанавливаем отступы от всех сторон
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                         // Устанавливаем радиус закругления углов изображения
                        child: Transform.scale(
                          scale: 0.9, // Уменьшаем масштаб изображения
                          child: Image.asset(
                            'assets/Group.png', // Путь к изображению
                            fit: BoxFit.scaleDown, // Заполнение изображения
                          ),
                        ),
                      ),
                      Text(
                        '50', // Текст под изображением
                        style: TextStyle(color: Colors.black, fontFamily: "Inknut Antiqua"), // Стиль текста
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 0),
              Center(
                child: Text(
                  'Magzhan', // Replace with user's name
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, fontFamily: "Inknut Antiqua"),
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
                        Text('Achievements', style: TextStyle(fontSize: 22.0, color: Colors.black, fontFamily: "Inknut Antiqua"),), // Текст
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: Text(
                  'Stats',
                  // Replace with user's name
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, fontFamily: "Inknut Antiqua"),
                ),
              ),
              Divider(
  height: 1, // Высота линии
  thickness: 1, // Толщина линии
  color: Colors.black, // Цвет линии
),
              Center(
                child: Text (
                  'Level: 50\nRecord: 72\nCoins: 50',
                  // Replace with user's name
                  style: TextStyle(fontSize: 20.0, fontFamily: "Inknut Antiqua"),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 16.0),
              Card(
  color: Color.fromARGB(240, 191, 191, 240), // Цвет фона карточки
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(50), // Устанавливаем радиус скругления углов карточки
    side: BorderSide(color: Colors.black, width: 2), // Добавляем рамку черного цвета толщиной 2
  ),
  child: Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Top', // Текст "Top"
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, fontFamily: "Inknut Antiqua"),
        ),
        SizedBox(height: 16.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isWorldSelected = true;
                  isRegionSelected = false;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: isWorldSelected ? Color.fromARGB(237, 122, 122, 176)  : Color.fromARGB(240, 191, 191, 240), // Установите цвет фона кнопки
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16), // Добавьте отступы для текста
              ),
              child: Text('World', style: TextStyle(color: isWorldSelected ? Colors.black : Colors.black, fontFamily: "Inknut Antiqua")),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isWorldSelected = false;
                  isRegionSelected = true;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: isRegionSelected ? Color.fromARGB(237, 122, 122, 176) : Color.fromARGB(240, 191, 191, 240), // Установите цвет фона кнопки
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16), // Добавьте отступы для текста
              ),
              child: Text('Region', style: TextStyle(color: isRegionSelected ? Colors.black : Colors.black, fontFamily: "Inknut Antiqua")),
            ),
          ],
        ),
        SizedBox(height: 16.0),
        if (isWorldSelected)
          Text('Player 1\nPlayer 2\nPlayer 3\nPlayer 4\nPlayer 5', style: TextStyle(fontFamily: "Inknut Antiqua")), // Контент для кнопки World
        if (isRegionSelected)
          Text('Player 1\nPlayer 2\nPlayer 3\nPlayer 4', style: TextStyle(fontFamily: "Inknut Antiqua")), // Контент для кнопки Region
      ],
    ),
  ),
),

            ],
          ),
        ),
      ),
    );
  }
}
