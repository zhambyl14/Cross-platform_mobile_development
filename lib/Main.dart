import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_screen.dart';
import 'user_screen.dart';
import 'top_screen.dart';
import 'settings_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Puzzle Escape',
        theme: ThemeData(
          scaffoldBackgroundColor: Color(0xFF7F7FCA),
          appBarTheme: AppBarTheme(
            backgroundColor: Color(0xFF7F7FCA),
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Colors.transparent,
            selectedItemColor: Color.fromARGB(255, 0, 0, 0), // Color of the selected tab
            unselectedItemColor: Colors.grey, // Color of unselected tabs
            selectedIconTheme: IconThemeData(size: 30), // Size of selected tab icons
            showSelectedLabels: true, // Show labels for selected tabs
            showUnselectedLabels: true, // Show labels for unselected tabs
          ),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    TopScreen(),
    UserScreen(),
    HomeScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Stack(
        children: [
          BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon:  Image.asset(
                  'assets/profile.png',
                  height: 30,
                  width: 30,
                ),
                label: 'Top',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/user.png',
                  height: 30,
                  width: 30,
                ),
                label: 'User',
              ),
               BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/main.png',
                  height: 30,
                  width: 30,
                ),
                label: 'Home',
              ),
              
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/set.png',
                  height: 30,
                  width: 30,
                ),
                label: 'Settings',
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * _selectedIndex / 4,
            bottom: 3,
            child: Container(
              width: MediaQuery.of(context).size.width / 4,
              height: 2,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ],
      ),
    );
  }
}
