import 'package:flutter/material.dart';

class NewScreenDivide5 extends StatelessWidget {
  const NewScreenDivide5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Get(color: Colors.lightGreen),
          ),
          Expanded(
            child: Row(
              children: [
                Get(color: Colors.purple),
                Expanded(
                  child: Column(
                    children: [
                      Get(color: Colors.deepOrangeAccent),
                      Get(color: Colors.blueGrey),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Get(color: Colors.black87),
                      Get(color: Colors.lightGreen),
                    ],
                  ),
                ),
                Get(color: Colors.blue)
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Get(color: Colors.brown),
                Get(color: Colors.pinkAccent),
                Get(color: Colors.tealAccent),
                Get(color: Colors.pink),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Get(color: Colors.orange),
                      Get(color: Colors.teal),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Get(color: Colors.lightGreen),
                                  Get(color: Colors.pink),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  Get(color: Colors.deepOrange),
                                  Get(color: Colors.lightGreen),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Get(color: Colors.deepOrangeAccent),
                    ],
                  ),
                ),
                Get(color: Colors.yellow),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Get(color: Colors.lightGreen),
                            Get(color: Colors.teal),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column (
                                      children: [
                                        Get(color: Colors.purpleAccent),
                                        Get(color: Colors.blue)
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Get(color: Colors.teal),
                                        Get(color: Colors.pinkAccent),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Get(color: Colors.deepOrange),
                          ],
                        ),
                      ),
                      // Get(color: Colors.teal),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget Get({required color}) {
    return Expanded(
      child: Container(
        color: color,
      ),
    );
  }
}
