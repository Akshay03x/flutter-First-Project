import 'package:flutter/material.dart';

class NewScreenDivide4 extends StatefulWidget {
  const NewScreenDivide4({Key? key}) : super(key: key);

  @override
  State<NewScreenDivide4> createState() => _NewScreenDivide4State();
}

class _NewScreenDivide4State extends State<NewScreenDivide4> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  CustomContainer(color: Colors.lightGreenAccent,flex: 2),
                  Expanded(child: Column(children: [CustomContainer(color: Colors.pink),CustomContainer(color: Colors.lightGreen)],)),
                  Expanded(child: Column(children: [CustomContainer(color: Colors.purpleAccent),CustomContainer(color: Colors.deepOrange)],))

                ],
              ),
            ),
            CustomContainer(color: Colors.orange),
          ],
        ),
      ),
    );
  }

  Widget CustomContainer({required color,flex}) {
    return Expanded(
      // flex: flex,
      child: Container(
        color: color,
      ),
    );
  }
}
