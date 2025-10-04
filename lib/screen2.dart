import 'package:flutter/material.dart';


class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Экран 2: Поиск\nСтатус: ${isActive ? "Активен" : "Выключен"}", style: const TextStyle(fontSize: 24), textAlign: TextAlign.center),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                isActive = !isActive;
              });
            },
            child: const Text("Переключить статус"),
          ),
        ],
      ),
    );
  }
}