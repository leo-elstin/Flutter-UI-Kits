import 'package:flutter/material.dart';

class ButtonPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Example'),
        actions: <Widget>[
          Icon(Icons.new_releases),
          Container(
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle
            ),
            padding: EdgeInsets.all(4),
            child: Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTI5TDjHkXbNGlduL7AEVMwGn4bc-QosNt7IRcp9fBJ4qN6N0pmHg',
                      ),
                  fit: BoxFit.cover,
                ),
                // borderRadius: BorderRadius.circular(45)
              ),
            ),
          )
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Icon Buttons',
            ),
            RaisedButton(
              onPressed: () {},
              child: Text('Normal Raised Button'),
            ),
            RaisedButton(
              color: Colors.blueGrey,
              onPressed: () {},
              child: Text(
                'Colured Raised Button',
                style: TextStyle(color: Colors.white),
              ),
            ),
            RaisedButton(
              color: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(45),
                ),
              ),
              onPressed: () {},
              child: Text(
                'Rounded Raised Button',
                style: TextStyle(color: Colors.white),
              ),
            ),
            RaisedButton(
              elevation: 15,
              color: Colors.green,
              highlightElevation: 30,
              onPressed: () {},
              onHighlightChanged: (value) {
                print(value);
              },
              child: Text(
                'Rounded Raised Button',
                style: TextStyle(color: Colors.white),
              ),
            ),
            FlatButton(
              onPressed: () {},
              child: Text(
                'Flat Button',
              ),
            ),
            FlatButton(
              color: Colors.deepPurple,
              onPressed: () {},
              child: Text(
                'Colored Flat Button',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            FlatButton(
              color: Colors.deepPurple,
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(45),
                ),
              ),
              child: Text(
                'Rounded Flat Button',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            FlatButton(
              splashColor: Colors.deepOrange,
              shape: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue)),
              highlightColor: Colors.yellowAccent,
              // color: Colors.deepPurple,
              onPressed: () {},
              child: Text(
                'Flat Button',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
            OutlineButton(
              onPressed: () {},
              color: Colors.red,
              child: Text('data'),
            ),
            Text(
              'Icon Buttons',
            ),
            IconButton(
              color: Colors.red,
              onPressed: () {},
              icon: Icon(Icons.new_releases),
            ),
            IconButton(
              splashColor: Colors.teal,
              color: Colors.black,
              onPressed: () {},
              icon: Icon(Icons.no_encryption),
            )
          ],
        ),
      ),
    );
  }
}
