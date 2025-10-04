import 'package:flutter/material.dart';


class ScreenFive extends StatefulWidget {
  const ScreenFive({super.key});

  @override
  State<ScreenFive> createState() => _ScreenFiveState();
}

class _ScreenFiveState extends State<ScreenFive> {
  double sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Экран 5: Настройки\nГромкость: ${sliderValue.toStringAsFixed(1)}", style: const TextStyle(fontSize: 24), textAlign: TextAlign.center),
          Slider(
            value: sliderValue,
            min: 0,
            max: 100,
            divisions: 100,
            label: sliderValue.toStringAsFixed(1),
            onChanged: (value) {
              setState(() {
                sliderValue = value;
              });
            },
          ),
        ],
      ),
    );
  }
}