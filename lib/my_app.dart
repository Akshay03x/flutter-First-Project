import 'package:flutter/material.dart';
import 'package:matrimony/home_page.dart';
import 'package:matrimony/screen_divide/my_home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      home:home_page(),
    );
  }
}
