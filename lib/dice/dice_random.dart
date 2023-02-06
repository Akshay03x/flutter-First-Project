import 'package:flutter/material.dart';
import 'package:matrimony/new_screen_divide/new_screen_divide6.dart';

class Dice extends StatefulWidget {
  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int d1=1;
  int d2=1;
  var min = 1; var max = 6;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: (){
                setState(() {
                  d1= min + random. nextInt(max - min);
                });
            },
            child: Image.asset(
              'Images/dice/dice$d1.png',
              height: 100,
              width: 100,
            ),
          ),
          InkWell(
            onTap: (){
              setState(() {
                d2= min + random. nextInt(max - min);
              });
            },
            child: Image.asset(
              'Images/dice/dice$d2.png',
              height: 100,
              width: 100,
            ),
          ),
        ],
      ),
    );
  }
}
