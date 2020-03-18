import 'package:fancy_bar/fancy_bar.dart';
import 'package:flutter/material.dart';

class AnimatedBottomBar extends StatefulWidget {
  static String tag = 'animatedBottomBar';

  @override
  _AnimatedBottomBarState createState() => _AnimatedBottomBarState();
}

class _AnimatedBottomBarState extends State<AnimatedBottomBar> {
  int pos = 0;

  void setItem(int _pos) {
    setState(() {
      pos = _pos;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(''),
      ),
      bottomNavigationBar: FancyBottomBar(
        type: FancyType.FancyV2,
        items: [
          FancyItem(
            textColor: Colors.orange,
            title: 'Home',
            icon: Icon(Icons.home),
          ),
          FancyItem(
            textColor: Colors.red,
            title: 'Trending',
            icon: Icon(Icons.trending_up),
          ),
          FancyItem(
            textColor: Colors.green,
            title: 'Search',
            icon: Icon(Icons.search),
          ),
          FancyItem(
            textColor: Colors.brown,
            title: 'Settings',
            icon: Icon(Icons.settings),
          ),
        ],
        onItemSelected: (index) {
          print(index);
        },
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
