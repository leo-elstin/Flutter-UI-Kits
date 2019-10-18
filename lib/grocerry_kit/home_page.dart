import 'package:flutter/material.dart';
import 'package:flutter_widgets/utils/cart_icons_icons.dart';
import 'sub_pages/home_list.dart';
import 'sub_pages/cart.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  List<Widget> _widgetList = [
    HomeList(),
    CartPage(),
    HomeList(),
    HomeList(),
  ];

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.shifting,
        currentIndex: _index,
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                CartIcons.home,
              ),
              title: Text('   Store  ', style: TextStyle())),
          BottomNavigationBarItem(
              icon: Icon(
                CartIcons.cart,
              ),
              title: Text('My Cart', style: TextStyle())),
          BottomNavigationBarItem(
              icon: Icon(
                CartIcons.favourites,
              ),
              title: Text('Favourites', style: TextStyle())),
          BottomNavigationBarItem(
              icon: Icon(
                CartIcons.account,
              ),
              title: Text(
                'My Account',
                style: TextStyle(),
              ))
        ],
      ),
      body: _widgetList[_index],
    );
  }
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

Widget _buildBottomBar(BuildContext con) {
  return BottomNavigationBar(
    // selectedItemColor: Colors.green,
    // unselectedItemColor: Colors.black,
    type: BottomNavigationBarType.fixed,
    currentIndex: 2,
    onTap: (index) {},
    items: [
      BottomNavigationBarItem(
          icon: Icon(
            CartIcons.home,
            color: Colors.black,
          ),
          title: Text('   Store  ', style: TextStyle())),
      BottomNavigationBarItem(
          icon: Icon(
            CartIcons.cart,
          ),
          title: Text('My Cart', style: TextStyle())),
      BottomNavigationBarItem(
          icon: Icon(
            CartIcons.favourites,
          ),
          title: Text('Favourites', style: TextStyle())),
      BottomNavigationBarItem(
          icon: Icon(
            CartIcons.account,
          ),
          title: Text(
            'My Account',
            style: TextStyle(),
          ))
    ],
  );
}
