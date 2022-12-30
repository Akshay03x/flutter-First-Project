import 'package:flutter/material.dart';
import 'dart:math';

Random random = new Random();

class NewScreenDivide6 extends StatefulWidget {
  const NewScreenDivide6({Key? key}) : super(key: key);

  @override
  State<NewScreenDivide6> createState() => _NewScreenDivide6State();
}

class _NewScreenDivide6State extends State<NewScreenDivide6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [CustomColumn(Part: 3)],
      ),
    );
  }

  Widget CustomColumn({required int Part}) {
    return Expanded(
      child: Column(
        children: List.generate(
          Part,
          (index) {
            return Expanded(
              child: Container(
                color: Color.fromARGB(
                  random.nextInt(256),
                  random.nextInt(256),
                  random.nextInt(256),
                  random.nextInt(256),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget CustomRow({required int Part}) {
    return Row(
      children: List.generate(
        Part,
        (index) {
          return Expanded(
            child: Container(
              color: Color.fromARGB(
                random.nextInt(256),
                random.nextInt(256),
                random.nextInt(256),
                random.nextInt(256),
              ),
            ),
          );
        },
      ),
    );
  }
}
