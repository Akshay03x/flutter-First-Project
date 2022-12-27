import 'package:flutter/material.dart';
import 'package:matrimony/new_screen_divide/new_screen_divide.dart';
import 'package:matrimony/new_screen_divide/new_screen_divide2.dart';
import 'package:matrimony/new_screen_divide/new_screen_divide3.dart';
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
          title: Text('NEW',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.black,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
                  },
                  child: Text(
                    'Screen',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.red,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SimpleClc()));
                  },
                  child: Text(
                    'Simple Clc',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.green,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Circle()));
                  },
                  child: Text(
                    'Circle Area',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.purple,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>NewScreenDivide2()));
                  },
                  child: Text(
                    'New Screen 2',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.orange,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>NewScreenDivide3()));
                  },
                  child: Text(
                    'New Screen 3',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
            ],
          ),


        ),
      ),
    );
  }
}


