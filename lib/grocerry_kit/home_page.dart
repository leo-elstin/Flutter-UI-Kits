import 'package:flutter/material.dart';
import 'package:flutter_widgets/utils/cart_icons_icons.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      bottomNavigationBar: _buildBottomBar(),
      body: Container(
        color: const Color(0xffF4F7FA),
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 16, top: 4),
                  child: Text(
                    'All Categories',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16, top: 4),
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      'View All',
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                ),
              ],
            ),
            _buildCategoryList(),
          ],
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      centerTitle: true,
      brightness: Brightness.dark,
      elevation: 0,
      backgroundColor: Colors.green,
      automaticallyImplyLeading: false,
      title: Text(
        'Keels',
        style: TextStyle(color: Colors.white),
      ),
      actions: <Widget>[
        Icon(Icons.search, color: Colors.white),
        SizedBox(
          width: 10,
        ),
        Icon(Icons.notifications_none, color: Colors.white),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }

  Widget _buildBottomBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: 2,
      onTap: (index) {},
      items: [
        BottomNavigationBarItem(
            icon: Icon(
              CartIcons.home,
              color: Colors.black,
            ),
            title: Text('   Store  ', style: TextStyle(color: Colors.black))),
        BottomNavigationBarItem(
            icon: Icon(CartIcons.cart, color: Colors.black),
            title: Text('My Cart', style: TextStyle(color: Colors.black))),
        BottomNavigationBarItem(
            icon: Icon(CartIcons.favourites, color: Colors.black),
            title: Text('Favourites', style: TextStyle(color: Colors.black))),
        BottomNavigationBarItem(
            icon: Icon(CartIcons.account, color: Colors.black),
            title: Text(
              'My Account',
              style: TextStyle(color: Colors.black),
            ))
      ],
    );
  }

  Widget _buildCategoryList() {
    return Container(
      height: 150,
      alignment: Alignment.center,
      child: ListView.builder(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Column(children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              width: 95,
              height: 95,
              alignment: Alignment.center,
              child: Icon(
                CartIcons.house_hold,
                size: 40,
                color: Colors.black38,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0, 5),
                    blurRadius: 15,
                  )
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Text('House Hold'),
                Icon(
                  Icons.keyboard_arrow_right,
                  size: 14,
                )
              ],
            )
          ]);
        },
      ),
    );
  }
}
