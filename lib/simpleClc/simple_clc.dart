// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SimpleClc extends StatefulWidget {
  @override
  State<SimpleClc> createState() => _SimpleClcState();
}

class _SimpleClcState extends State<SimpleClc> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.purple, width: 10),
        ),
        child: Scaffold(
          body: Image.asset('assets/Images/1222.jpg', width: 100, height: 100),
        ),
      ),
    );
  }
}
