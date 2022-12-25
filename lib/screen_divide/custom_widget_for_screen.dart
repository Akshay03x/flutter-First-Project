import 'package:flutter/material.dart';

class CoustomWidget extends StatelessWidget{
  var flex1=3,flex2=3,flex3=3;
  var color1,color2,color3;


  CoustomWidget({required flex1, required flex2,required flex3,required color1,required color2,required color3}){
    this.flex1=flex1;
    this.flex2=flex2;
    this.flex3=flex3;
    this.color1=color1;
    this.color2=color2;
    this.color3=color3;
  }

  @override
  Widget build(BuildContext context) {
    return  Flexible(
      flex: 3,
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        child: Column(
          children: [
            Flexible(
              flex: this.flex1,
              child: Container(
                // margin: EdgeInsets.all(10),
                color: this.color1,
              ),
            ),
            Flexible(
              flex: this.flex2,
              child: Container(
                color: this.color2,
              ),
            ),
            Flexible(
              flex: this.flex3,
              child: Container(
                color: this.color3,
              ),
            ),
          ],
        ),
      ),
    );
  }

}
