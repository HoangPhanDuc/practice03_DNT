import 'Dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
      MaterialApp(
          home: Scaffold(
            backgroundColor: Colors.red,
            appBar: AppBar(
              title: Text('Dicee'),
              backgroundColor: Colors.red,
            ),
            body: DicePage(),
          )
      )
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement buildx
    return Center(
      child:  Row(
        children: <Widget>[
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        changeDiceFace();
                      });
                      print("Left button got pressed");
                    },
                    child: Image.asset("assets/dice$leftDiceNumber.png")),
              )
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextButton(
                    onPressed: () {
                      changeDiceFace();
                      print("Right button on pressed");
                    },
                    child: Image.asset("assets/dice$rightDiceNumber.png")),
              )
          ),
        ],
      ),
    );
  }
}