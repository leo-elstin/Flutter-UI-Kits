import 'package:flutter/material.dart';
import 'dart:math' as math;

class FloatingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FloatingPageState();
  }
}

class _FloatingPageState extends State<FloatingPage>
    with TickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 200,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Floating Action Button'),
      ),
      floatingActionButton: Column(
//        crossAxisAlignment: CrossAxisAlignment.baseline,
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ScaleTransition(
              scale: CurvedAnimation(
                  parent: _controller,
                  curve: Interval(0.0, 1.0, curve: Curves.easeOut)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text('Inborwrerx'),
                  Container(
                    margin: EdgeInsets.all(8),
                    child: FloatingActionButton(
                      onPressed: null,
                      backgroundColor: Colors.white,
                      mini: true,
                      child: Icon(
                        Icons.email,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              )),
          ScaleTransition(
              scale: CurvedAnimation(
                  parent: _controller,
                  curve: Interval(0.0, 0.5, curve: Curves.easeOut)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text('Inborwrerx'),
                  Container(
                    margin: EdgeInsets.all(8),
                    child: FloatingActionButton(
                      onPressed: null,
                      backgroundColor: Colors.white,
                      mini: true,
                      child: Icon(
                        Icons.email,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              )),
          Container(
            margin: EdgeInsets.all(8),
            child: FloatingActionButton(
                onPressed: () {
                  if (_controller.isDismissed) {
                    _controller.forward();
                  } else {
                    _controller.reverse();
                  }
                },
                backgroundColor: Colors.purple,
                child: AnimatedBuilder(
                    animation: _controller,
                    builder: (context, widget) {
                      return Transform(
                        alignment: FractionalOffset.center,
                        transform:
                            Matrix4.rotationZ(_controller.value * 1 * math.pi),
                        child: Icon(
                            _controller.isDismissed ? Icons.edit : Icons.close),
                      );
                    })),
          ),
        ],
      ),
    );
  }
}
