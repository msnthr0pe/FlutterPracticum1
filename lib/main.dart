import 'package:flutter/material.dart';
import 'package:rkmp1/screen1.dart';
import 'package:rkmp1/screen2.dart';
import 'package:rkmp1/screen3.dart';
import 'package:rkmp1/screen4.dart';
import 'package:rkmp1/screen5.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    ScreenOne(),
    ScreenTwo(),
    ScreenThree(),
    ScreenFour(),
    ScreenFive(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Главная"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Поиск"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "Список"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Профиль"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Настройки"),
        ],
      ),
    );
  }
}





