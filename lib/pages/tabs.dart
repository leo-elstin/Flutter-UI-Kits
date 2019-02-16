import 'package:flutter/material.dart';


class TabsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      // initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tab Example'),
          bottom: TabBar(
            tabs: <Widget>[
              Text('Image', ),
              Icon(Icons.offline_pin),
               Text('Text', style: TextStyle(
                fontSize: 18,
                color: Colors.yellow
              ),),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: Image.network('https://thumbs-prod.si-cdn.com/c3phl1TZgQ92bLQugItmtovLZhs=/fit-in/1600x0/https://public-media.si-cdn.com/filer/54/10/5410da58-2295-4e3a-a847-fecd41cdcdd9/scarlet_tanager.jpg'),
            ),
            Center(
              child: Icon(Icons.youtube_searched_for),
            ),Center(
              child: Text('Text with style'),
            )
          ],

        )
      ),
    );
  }
}
