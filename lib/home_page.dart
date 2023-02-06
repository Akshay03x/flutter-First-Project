import 'package:flutter/material.dart';
import 'package:matrimony/dice/dice_random.dart';
import 'package:matrimony/login_page/pre_login_page.dart';
import 'package:matrimony/new_screen_divide/new_screen_divide.dart';
import 'package:matrimony/new_screen_divide/new_screen_divide2.dart';
import 'package:matrimony/new_screen_divide/new_screen_divide3.dart';
import 'package:matrimony/new_screen_divide/new_screen_divide4.dart';
import 'package:matrimony/new_screen_divide/new_screen_divide5.dart';
import 'package:matrimony/new_screen_divide/new_screen_divide6.dart';
import 'package:matrimony/screen_divide/my_home_page.dart';
import 'package:matrimony/simpleClc/simple_clc.dart';

import 'area_circle/circle_area.dart';

class home_page extends StatefulWidget {
  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'NEW',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              CustomForContainer(color: Colors.orange, function: MyHomePage(),text: "Screen"),
              CustomForContainer(color: Colors.red, function:SimpleClc() , text: "Simple Clc "),
              CustomForContainer(color: Colors.green, function:Circle() , text: "Circle Area "),
              CustomForContainer(color: Colors.orange, function:NewScreenDivide2() , text: "New Screen 2 "),
              CustomForContainer(color: Colors.purple, function:NewScreenDivide3() , text: "New Screen 3"),
              CustomForContainer(color: Colors.black, function: NewScreenDivide4(),text: "New Screen 4"),
              CustomForContainer(color: Colors.lightGreen, function: NewScreenDivide5(),text: "New Screen 5"),
              CustomForContainer(color: Colors.pink, function: NewScreenDivide6(),text: "New Screen 6"),
              CustomForContainer(color: Colors.amberAccent, function:LoginPage(),text: "Login Page"),
              CustomForContainer(color: Colors.amberAccent, function:Dice(),text: "Dice"),
            ],

          ),
        ),
      ),
    );
  }

  Widget CustomForContainer({required color, required function,required text}) {
    return Flexible(
      child: Container(
        margin: EdgeInsets.all(10),
        color: color,
        child: TextButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => function));
          },
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
