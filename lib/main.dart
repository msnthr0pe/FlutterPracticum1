import 'package:flutter/material.dart';

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

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Экран 1: Главная", style: TextStyle(fontSize: 24)),
    );
  }
}

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Экран 2: Поиск", style: TextStyle(fontSize: 24)),
    );
  }
}

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Экран 3: Список", style: TextStyle(fontSize: 24)),
    );
  }
}

class ScreenFour extends StatelessWidget {
  const ScreenFour({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Экран 4: Профиль", style: TextStyle(fontSize: 24)),
    );
  }
}

class ScreenFive extends StatelessWidget {
  const ScreenFive({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Экран 5: Настройки", style: TextStyle(fontSize: 24)),
    );
  }
}
