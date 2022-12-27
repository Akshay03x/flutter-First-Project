import 'package:flutter/material.dart';

class NewScreenDivide3 extends StatelessWidget {
  const NewScreenDivide3({Key? key}) : super(key: key);

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
              flex: 1,
              child: Column(
                children: [
                  Expanded(
                      child: Container(
                    color: Colors.tealAccent,
                  )),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.purpleAccent,
                    ),
                  ),
                  // Expanded(child: Container(color: Colors.deepOrange,))
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.red,
                          ),
                        ),
                        Expanded(
                          child: Container(color: Colors.pinkAccent),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.lightGreenAccent,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.limeAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    // flex: 2,
                    child: Container(
                      color: Colors.purpleAccent,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
