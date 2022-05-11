import 'package:flutter/material.dart';
import 'dart:developer';

class ButtonCalculator {
  final String? label;
  final String? type;
  ButtonCalculator({this.label, this.type});
}

class Ex1 extends StatefulWidget {
  Ex1({Key? key}) : super(key: key);
  static const buttons = [
    'C',
    '←',
    '%',
    '÷',
    '7',
    '8',
    '9',
    '×',
    '4',
    '5',
    '6',
    '-',
    '1',
    '2',
    '3',
    '+',
    '0',
    '.',
    '=',
  ];

  static const TextStyle titleStyle =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 40);
  static const TextStyle textStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black);

  @override
  State<Ex1> createState() => _Ex1State();
}

class _Ex1State extends State<Ex1> {
  var inputText = '';
  var currentCalculation = '';
  int lastResult = 0;

  var btnArr = [
    [
      ButtonCalculator(label: 'C', type: 'clear'),
      ButtonCalculator(label: '←', type: 'back'),
      ButtonCalculator(label: '%', type: 'calculation'),
      ButtonCalculator(label: '÷', type: 'calculation'),
    ],
    [
      ButtonCalculator(label: '7', type: 'number'),
      ButtonCalculator(label: '8', type: 'number'),
      ButtonCalculator(label: '9', type: 'number'),
      ButtonCalculator(label: '×', type: 'calculation'),
    ],
    [
      ButtonCalculator(label: '4', type: 'number'),
      ButtonCalculator(label: '5', type: 'number'),
      ButtonCalculator(label: '6', type: 'number'),
      ButtonCalculator(label: '-', type: 'calculation'),
    ],
    [
      ButtonCalculator(label: "1", type: 'number'),
      ButtonCalculator(label: '2', type: 'number'),
      ButtonCalculator(label: '3', type: 'number'),
      ButtonCalculator(label: '+', type: 'calculation'),
    ],
    [
      ButtonCalculator(label: '0', type: 'number'),
      ButtonCalculator(label: '.', type: 'number'),
      ButtonCalculator(label: '=', type: 'equal'),
    ],
  ];

  void setTextInput(text, type) {
    if (inputText.length > 30) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Warning!!"),
            content: const Text("Khong nhap qua 30 so!"),
            actions: <Widget>[
              TextButton(
                child: Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
      return;
    }
    switch (type) {
      case 'clear':
        setState(() {
          inputText = '';
          lastResult = 0;
          currentCalculation = '';
        });
        break;
      case 'back':
        setState(() {
          inputText = inputText.substring(0, inputText.length - 1);
        });
        break;
      case 'number':
        var newInput = inputText + text;
        int result = lastResult;
        if (currentCalculation.isNotEmpty) {
          switch (currentCalculation) {
            case '+':
              result = result + int.parse(text);
              break;
            case '-':
              result = result - int.parse(text);
              break;
            case '*':
              result = result * int.parse(text);
              break;
            case '/':
              result = result ~/ int.parse(text);
              break;
          }
        }
        setState(() {
          inputText = newInput;
          lastResult = result;
          currentCalculation = '';
        });
        break;

      case 'calculation':
        setState(() {
          currentCalculation = text;
        });
        break;

      case 'equal':
        setState(() {
          currentCalculation = text;
        });
        break;
    }
  }

  void equalPressed() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
        backgroundColor: Colors.brown,
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: SizedBox(
                width: double.infinity,
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.bottomRight,
                  color: Colors.white,
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 120, bottom: 0),
                  child: Text(inputText,
                      style: Ex1.titleStyle, textAlign: TextAlign.right),
                )),
          ),
          const Divider(color: Colors.grey),
          for (var arr in btnArr)
            arr.length == 3
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      for (int i = 0; i < arr.length; i++)
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: ElevatedButton(
                            child: Text(
                              arr[i].label.toString(),
                              style: Ex1.textStyle,
                            ),
                            onPressed: () {
                              setTextInput(arr[i].label.toString(),
                                  arr[i].type.toString());
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32.0)),
                              minimumSize: const Size(100, 40),
                              primary:
                                  i == 2 ? Colors.orange : Colors.grey.shade300,
                            ),
                          ),
                        ),
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      for (int i = 0; i < arr.length; i++)
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: ElevatedButton(
                            child: Text(
                              arr[i].label.toString(),
                              style: Ex1.textStyle,
                            ),
                            onPressed: () {
                              setTextInput(arr[i].label.toString(),
                                  arr[i].type.toString());
                            },
                            style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              padding: const EdgeInsets.all(28),
                              primary:
                                  i == 3 ? Colors.orange : Colors.grey.shade300,
                            ),
                          ),
                        ),
                    ],
                  ),
          const SizedBox(height: 20)
        ],
      )),
    );
  }
}
