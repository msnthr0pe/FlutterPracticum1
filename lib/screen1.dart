import 'package:flutter/material.dart';


class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Экран 1: Главная\nСчётчик: $counter", style: const TextStyle(fontSize: 24), textAlign: TextAlign.center),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                counter++;
              });
            },
            child: const Text("Увеличить счётчик"),
          ),
        ],
      ),
    );
  }
}