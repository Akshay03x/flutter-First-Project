import 'package:flutter/material.dart';

Widget Custom(String title, bool isAnswer, controller, HintText) {
  return Container(
    margin: EdgeInsets.only(top: 10),
    child: Row(
      children: [
        Expanded(
          flex: 2,
          child: Text(title,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              )),
        ),
        isAnswer
            ?  Expanded(
          flex: 2,
          child: Text(HintText),
        )
            : Expanded(
          flex: 2,
          child: TextField(
            controller: controller,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: HintText,
              border: const OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.black),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}