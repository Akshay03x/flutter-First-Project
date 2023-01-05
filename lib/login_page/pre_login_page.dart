import 'package:flutter/material.dart';
import 'package:matrimony/login_page/login_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Login page"),
        ),
        body: Center(
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      'assets/Images/bg.jpg',
                      fit: BoxFit.cover,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/Images/bharatmatrimony-logo.png',
                            width: 200,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Column(
                              children: [
                                Text(
                                  "INDIA'S\nMOST TRUSTED\nMATRIMONY BRAND\n",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "BY THE BRAND TRUST REPORT 2014",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 15,
                                    // fontFamily: ,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.combine([TextDecoration.overline, TextDecoration.underline])
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(bottom: 2),
                      color: Colors.pink,
                      // padding: EdgeInsets.all(5),
                      child: TextButton(
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage2(),));},
                        child: Text(
                          "Login ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(bottom: 2),

                      color: Colors.yellow,
                      // padding: EdgeInsets.all(10),
                      child: TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text(
                              "Sign Up",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 19,
                                color: Colors.red,
                              ),
                            ),
                            Icon(Icons.upgrade, color: Colors.red),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
