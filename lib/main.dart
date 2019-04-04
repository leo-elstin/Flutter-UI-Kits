import 'package:flutter/material.dart';
import 'package:flutter_widgets/pages/floating_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: FloatingPage(),
    );
  }
}

