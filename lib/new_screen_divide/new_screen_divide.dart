import 'package:flutter/material.dart';

class NewScreenDivide extends StatefulWidget {
  @override
  State<NewScreenDivide> createState() => _NewScreenDivideState();
}

class _NewScreenDivideState extends State<NewScreenDivide> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: [
            New(c1: Colors.black, c2: Colors.pinkAccent, c3: Colors.green,f1: 2,f2: 3,f3: 2),
            New(c1: Colors.yellow, c2: Colors.purpleAccent, c3: Colors.blue,f1: 2,f2: 2,f3: 2),
            New(c1: Colors.pink, c2: Colors.green, c3: Colors.purple,f1: 3,f2: 2,f3: 3),

          ],
        ),
      ),
    );
  }
}

Widget New({required c1, required c2, required c3, required f1, required f2, required f3}) {
  return Expanded(
    child: Column(
      children: [
        Expanded(
          flex: f1,
          child: Container(
            color: c1,
          ),
        ),
        Expanded(
          flex: f2,
          child: Container(
            color: c2,
          ),
        ),
        Expanded(
          flex: f3,
          child: Container(color: c3),
        ),
      ],
    ),
  );
}
