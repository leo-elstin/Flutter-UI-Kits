import 'package:flutter/material.dart';
import 'package:flutter_widgets/wallpaper_kit/sub_pages/wallpapers.dart';

class WallHomePage extends StatelessWidget {
  const WallHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.black,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Image.asset('images/menu_icon.png'),
          elevation: 0,
          backgroundColor: Colors.transparent,
          brightness: Brightness.light,
          actions: <Widget>[
            Container(
              padding:
                  EdgeInsets.only(top: 10, bottom: 10, left: 32, right: 32),
              height: 30,
              child: Container(
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(45),
                  color: Color(0x50F02D2D),
                ),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 24, right: 8),
                      child: Text(
                        'Search',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFFF02D2D),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 16),
                      child: Icon(
                        Icons.search,
                        color: Color(0xFFF02D2D),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),

        // backgroundColor: Colors.black,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          child: Icon(Icons.add),
          onPressed: () {},
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.black,
          shape: CircularNotchedRectangle(),
          child: Container(
            color: Colors.black,
            // height: 45,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.home,
                          color: Colors.white,
                          // size: 32,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Home',
                            style: TextStyle(color: Colors.white, fontSize: 11),
                          ),
                        )
                      ],
                    ),
                    // onPressed: () {},
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.favorite,
                          color: Colors.grey,
                          // size: 32,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Favourites',
                            style: TextStyle(color: Colors.white, fontSize: 11),
                          ),
                        )
                      ],
                    ),
                    // onPressed: () {},
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.image,
                          color: Colors.grey,
                          // size: 32,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'My Wallpapers',
                            style: TextStyle(color: Colors.white, fontSize: 11),
                          ),
                        )
                      ],
                    ),
                    // onPressed: () {},
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(8),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.more_horiz,
                          color: Colors.grey,
                          // size: 32,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'More',
                            style: TextStyle(color: Colors.white, fontSize: 11),
                          ),
                        )
                      ],
                    ),
                    // onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Wallpapers(),
      ),
    );
  }
}
