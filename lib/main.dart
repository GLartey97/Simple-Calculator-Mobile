import 'package:flutter/material.dart';

void main() {
  runApp(const Calculator());
}

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const SimpleCalculator(),
    );
  }
}

class SimpleCalculator extends StatefulWidget {
  const SimpleCalculator({super.key});

  @override
  State<SimpleCalculator> createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator> {
  Widget buildButton(
      String buttonText, double buttonHeight, Color buttonColor) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1 * buttonHeight,
      color: buttonColor,
      child: TextButton(
        onPressed: () {},
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
              side: const BorderSide(
                  color: Colors.white, width: 1, style: BorderStyle.solid),
            ),
          ),
        ),
        child: Text(
          buttonText,
          style: const TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Calculator'),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: const Text(
              '0',
              style: TextStyle(fontSize: 38.0),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
            child: const Text(
              '0',
              style: TextStyle(fontSize: 48.0),
            ),
          ),
          const Expanded(
            child: Divider(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.75,
                child: Table(
                  children: [
                    TableRow(
                      children: [
                        buildButton("C", 1, Colors.redAccent),
                        buildButton("⌫", 1, Colors.indigo),
                        buildButton("÷", 1, Colors.indigo),
                      ],
                    ),
                    TableRow(
                      children: [
                        buildButton("9", 1, Colors.black87),
                        buildButton("8", 1, Colors.black87),
                        buildButton("7", 1, Colors.black87),
                      ],
                    ),
                    TableRow(
                      children: [
                        buildButton("6", 1, Colors.black87),
                        buildButton("5", 1, Colors.black87),
                        buildButton("4", 1, Colors.black87),
                      ],
                    ),
                    TableRow(
                      children: [
                        buildButton("3", 1, Colors.black87),
                        buildButton("2", 1, Colors.black87),
                        buildButton("1", 1, Colors.black87),
                      ],
                    ),
                    TableRow(
                      children: [
                        buildButton(".", 1, Colors.black87),
                        buildButton("0", 1, Colors.black87),
                        buildButton("00", 1, Colors.black87),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.25,
                child: Table(
                  children: [
                    TableRow(
                      children: [
                        buildButton("×", 1, Colors.indigo),
                      ],
                    ),
                    TableRow(
                      children: [
                        buildButton("-", 1, Colors.indigo),
                      ],
                    ),
                    TableRow(
                      children: [
                        buildButton("+", 1, Colors.indigo),
                      ],
                    ),
                    TableRow(
                      children: [
                        buildButton("=", 2, Colors.redAccent),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
