import 'package:flutter/material.dart';
import 'package:flutter_widgets/pages/floating_button.dart';
import 'grocerry_kit/welcome.dart';
import 'grocerry_kit/auth.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Widgets',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: AuthPage(),
    );
  }
}

