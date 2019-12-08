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
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
//      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('ANIMATER BOTTOMBAR'),
      ),
      bottomNavigationBar: BottomAppBar(
//        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            InkWell(
              onTap: () => setItem(0),
              child: Container(
                  width: 100,
                  height: 55,
                  alignment: Alignment.center,
                  child: AnimatedSwitcher(
                    transitionBuilder:
                        (Widget child, Animation<double> animation) {
                      return ScaleTransition(
                        scale: animation,
                        child: child,
                      );
                    },
                    duration: Duration(milliseconds: 250),
                    child: pos == 0
                        ? Text(
                            'Home',
                            style: TextStyle(
                                color: Colors.deepPurple,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          )
                        : Icon(Icons.home),
                  )),
            ),
            InkWell(
              onTap: () => setItem(1),
              child: Container(
                  width: 100,
                  height: 55,
                  alignment: Alignment.center,
                  child: AnimatedSwitcher(
                    transitionBuilder:
                        (Widget child, Animation<double> animation) {
                      return ScaleTransition(
                        scale: animation,
                        child: child,
                      );
                    },
                    duration: Duration(milliseconds: 250),
                    child: pos == 1
                        ? Text('Trending',
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 18))
                        : Icon(Icons.trending_up),
                  )),
            ),
            InkWell(
              onTap: () => setItem(2),
              child: Container(
                width: 100,
                height: 55,
                alignment: Alignment.center,
                child: AnimatedSwitcher(
                  transitionBuilder:
                      (Widget child, Animation<double> animation) {
                    return ScaleTransition(
                      scale: animation,
                      child: child,
                    );
                  },
                  duration: Duration(milliseconds: 250),
                  child: pos == 2
                      ? Text('Search',
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontSize: 18))
                      : Icon(Icons.search),
                ),
              ),
            ),
            InkWell(
              onTap: () => setItem(3),
              child: Container(
                  width: 100,
                  height: 55,
                  alignment: Alignment.center,
                  child: AnimatedSwitcher(
                    transitionBuilder:
                        (Widget child, Animation<double> animation) {
                      return ScaleTransition(
                        scale: animation,
                        child: child,
                      );
                    },
                    duration: Duration(milliseconds: 250),
                    child: pos == 3
                        ? Text('Profile',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 18))
                        : Icon(Icons.account_circle),
                  )),
            ),
          ],
        ),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'TAP TO PLAY WITH ANIMATION',
            ),
          ],
        ),
      ),
    );
  }
}
