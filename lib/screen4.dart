import 'package:flutter/material.dart';


class ScreenFour extends StatefulWidget {
  const ScreenFour({super.key});

  @override
  State<ScreenFour> createState() => _ScreenFourState();
}

class _ScreenFourState extends State<ScreenFour> {
  String name = "Гость";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Экран 4: Профиль\nИмя: $name", style: const TextStyle(fontSize: 24), textAlign: TextAlign.center),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                name = "Студент";
              });
            },
            child: const Text("Изменить имя"),
          ),
        ],
      ),
    );
  }
}