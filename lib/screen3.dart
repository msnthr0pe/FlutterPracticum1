import 'package:flutter/material.dart';


class ScreenThree extends StatefulWidget {
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  String text = "Список пуст";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Экран 3: Список\n$text", style: const TextStyle(fontSize: 24), textAlign: TextAlign.center),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                text = "Элемент добавлен!";
              });
            },
            child: const Text("Добавить элемент"),
          ),
        ],
      ),
    );
  }
}