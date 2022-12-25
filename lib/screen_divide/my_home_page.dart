import 'package:flutter/material.dart';
import 'package:matrimony/screen_divide/custom_widget_for_screen.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text("Screen Divide"),
        ),
        body: Container(
          decoration:
              BoxDecoration(border: Border.all(color: Colors.white, width: 12)),
          child: Flexible(
            flex: 3,
            child: Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: Row(
                children: [
                  CoustomWidget(
                      flex1: 2,
                      flex2: 2,
                      flex3: 4,
                      color1: Colors.red,
                      color2: Colors.purpleAccent,
                      color3: Colors.yellow),
                  CoustomWidget(
                      flex1: 2,
                      flex2: 3,
                      flex3: 2,
                      color1: Colors.brown,
                      color2: Colors.pinkAccent,
                      color3: Colors.blueAccent),
                  CoustomWidget(
                      flex1: 2,
                      flex2: 3,
                      flex3: 3,
                      color1: Colors.red,
                      color2: Colors.green,
                      color3: Colors.purple),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
