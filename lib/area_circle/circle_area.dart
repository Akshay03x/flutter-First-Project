import 'dart:math';

import 'package:flutter/material.dart';

class Circle extends StatefulWidget {
  const Circle({Key? key}) : super(key: key);

  @override
  State<Circle> createState() => _CircleState();
}

class _CircleState extends State<Circle> {
  late TextEditingController _radius;
  late double answer = 0;

  @override
  void initState() {
    super.initState();
    _radius = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Circle Area",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Newidget("Enter Radius", false, _radius, 0),
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              color: Colors.black,
              child: TextButton(
                onPressed: () {
                  Calculatevalue();
                },
                child: const Text(
                  "Calculate",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.white),
                ),
              ),
            ),
            Container(
              child: Newidget("Answer is:", true, null, answer),
            )
          ],
        ),
      ),
    );
  }

  Widget Newidget(HintText, flag, controller, answer) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 15),
              child: Text(
                HintText,
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          flag
              ? Expanded(
                  flex: 2,
                  child: Text(answer.toString()),
                )
              : Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 15),
                    child: TextField(
                      controller: controller,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: HintText,
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 3, color: Colors.greenAccent),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                    ),
                  ),
                )
        ],
      ),
    );
  }

  Calculatevalue() {
    setState(
      () {
        FocusManager.instance.primaryFocus?.unfocus();
        double value = double.parse(_radius.text);
        this.answer = value * value * pi;
      },
    );
  }
}
