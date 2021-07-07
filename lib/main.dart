import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat Ui',
      theme: ThemeData(
          canvasColor: Color(0xFF222222),
          primaryColor: Color(0xFFAF00F5),
          brightness: Brightness.dark),
      home: HomePage(),
    );
  }
}
