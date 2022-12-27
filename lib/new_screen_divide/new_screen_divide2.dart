import 'package:flutter/material.dart';
import 'package:matrimony/new_screen_divide/new_screen_divide.dart';

class NewScreenDivide2 extends StatelessWidget {
  const NewScreenDivide2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("New Screen Divide"),
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.pink,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                       Expanded(child: Row(children: [Expanded(child: Container(color:  Colors.deepOrange,)),Expanded(child: Container(color: Colors.lightGreenAccent,))],)),
                        Expanded(child: Row(children: [Expanded(child: Container(color:  Colors.purpleAccent,)),Expanded(child: Container(color: Colors.pink,))],))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    color: Colors.lightGreen,
                  )),
                  Expanded(child: NewScreenDivide()),
                  // Expanded(child: Container(color: Colors.green,)),
                  Expanded(
                      child: Container(
                    color: Colors.brown,
                  )),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    color: Colors.brown,
                  )),
                  Expanded(
                      child: Container(
                    color: Colors.blue,
                  )),
                  Expanded(
                      child: Container(
                    color: Colors.pink,
                  )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
