import 'package:flutter/material.dart';

import 'custom_widget.dart';

class SimpleClc extends StatefulWidget {
  @override
  State<SimpleClc> createState() => _SimpleClcState();
}

class _SimpleClcState extends State<SimpleClc> {
  late TextEditingController _amountController;
  late TextEditingController _roiController;
  late TextEditingController _tpController;

  late double principleAmount = 0;
  late double totalInterest = 0;
  late double totalAmount = 0;

  @override
  void initState() {
    super.initState();
    _amountController = TextEditingController();
    _roiController = TextEditingController();
    _tpController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Simple Clc',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Column(
              children: [
                Custom("Principle Amount ", false, _amountController,
                    "Principle Amount"),
                Custom("Rate Of Interest", false, _roiController,
                    "Rate Of Interest"),
                Custom("Time Period ", false, _tpController, "Time Period "),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: TextButton(
                    onPressed: () {
                      CalulateValue();
                    },
                    child: const Text(
                      "Calculate",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white),
                    ),
                  ),
                  color: Colors.black,
                ),
                Custom("Principle Amount  ", true, null,
                    principleAmount.toString()),
                Custom("Total interest ", true, null, totalInterest.toString()),
                Custom("Total Amount ", true, null, totalAmount.toString()),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void CalulateValue() {
    setState(
      () {
        FocusManager.instance.primaryFocus?.unfocus();
        double amount = double.parse(_amountController.text);
        double roi = double.parse(_roiController.text);
        double tp = double.parse(_tpController.text);

        this.principleAmount = amount;
        this.totalInterest = (amount * ((roi / 100) * tp));
        this.totalAmount = totalInterest + principleAmount;
      },
    );
  }
}
