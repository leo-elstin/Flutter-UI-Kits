import 'package:flutter/material.dart';
import 'grocerry_kit/welcome.dart';
import 'grocerry_kit/auth.dart';
import 'grocerry_kit/phone_verify.dart';
import 'grocerry_kit/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UI Kit',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.amber,
      ),
      routes: {
        '/': (context) => WelcomePage(),
        '/grocerry/auth': (context) => AuthPage(),
        '/grocerry/verify': (context) => VerifyPage(),
        '/grocerry/home': (context) => HomePage(),
      },
    );
  }
}

