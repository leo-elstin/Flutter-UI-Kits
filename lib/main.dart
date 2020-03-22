import 'package:flutter/material.dart';
import 'package:flutter_widgets/animation/animated_bottom_bar.dart';
import 'package:flutter_widgets/note_app/edit_note.dart';

import 'grocerry_kit/auth.dart';
import 'grocerry_kit/home_page.dart';
import 'grocerry_kit/phone_verify.dart';
import 'grocerry_kit/sub_pages/cart.dart';

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
        '/': (context) => AnimatedBottomBar(),
        '/grocerry/auth': (context) => AuthPage(),
        '/grocerry/verify': (context) => VerifyPage(),
        '/grocerry/home': (context) => HomePage(),
        '/grocerry/cart': (context) => CartPage(),
        AnimatedBottomBar.tag: (context) => AnimatedBottomBar(),
        EditNote.tag: (context) => EditNote(),
      },
    );
  }
}
