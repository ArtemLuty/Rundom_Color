import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<HomePage> {
  List colors = [
    Colors.red,
    Colors.white,
    Colors.grey,
    Colors.brown,
    Colors.blue,
    Colors.yellow,
    Colors.green,
    Colors.black,
    Colors.amber,
  ];
  Random random = new Random();

  int index = 0;

  void changeIndex() {
    setState(() => index = random.nextInt(9));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: FlatButton(
              onPressed: () => changeIndex(),
              child: Center(
                  child: Text(
                'Hey there...',
                style: TextStyle(
                    fontSize: 20.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              )),
              color: colors[index],
              padding: EdgeInsets.all(0)),
          margin: EdgeInsets.all(0),
        ),
      ),
    );
  }
}
