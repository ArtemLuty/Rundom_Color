import 'package:flutter/material.dart';

import 'home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Random Color',
        theme: ThemeData(primarySwatch: Colors.amber),
        home: HomePage());
  }
}
