  import 'package:flutter/material.dart';
// import 'package:mongo_dart/mongo_dart.dart' show Db, DbCollection;

class LoginPage2 extends StatelessWidget {
  const LoginPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Hello"),
        ),
        body: Column(
          children: [
            Expanded(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    'assets/Images/flutter2.jpg',
                    fit: BoxFit.cover,
                  ),
                  Container(
                    color: Color(0x77000000),
                  ),
                  Center(
                    child: SingleChildScrollView(
                      child: Card(

                        elevation: 500,
                        margin: EdgeInsets.all(10),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/Images/flutter2.jpg',height: 100,),
                            CustomForField(hintText: "Enter Email "),
                            CustomForField(hintText: "Enter PassWord"),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: InkWell(
                                onTap: () {},
                                child: Text(
                                  'Forgot PassWord?',
                                  style:
                                      TextStyle(color: Colors.blue, fontSize: 15),
                                ),
                              ),
                            ),
                            Container(
                              // padding: EdgeInsets.fromLTRB(10, 0, 20, 0),
                              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                              child: TextButton(
                                style: TextButton.styleFrom(
                                    backgroundColor: Colors.black,
                                    padding: EdgeInsets.fromLTRB(40, 0, 40, 0,) ,// Background Color
                                    ),
                                onPressed: () {},
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Colors.yellowAccent,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget CustomForField({required hintText}) {
    return Container(
      margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
      child: TextFormField(
        style: TextStyle(fontSize: 18, fontFamily: 'Yeon'),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold,
              fontFamily: 'Yeon'),
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 3, color: Colors.greenAccent),
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
      ),
    );
  }
}
