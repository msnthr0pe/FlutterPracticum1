import 'package:flutter/cupertino.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _State();
}

class _State extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}
