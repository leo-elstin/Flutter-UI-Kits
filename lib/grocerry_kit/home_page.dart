import 'package:flutter/material.dart';
import 'package:flutter_widgets/utils/cart_icons_icons.dart';
import 'model/product_model.dart';

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 16, top: 4),
                  child: Text(
                    'Prime Member Deals',
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
            _buildDealList(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 16, top: 4),
                  child: Text(
                    'Keells Deals',
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
            _buildDealList()
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
    var items = addItems();
    return Container(
      height: 150,
      alignment: Alignment.centerLeft,
      child: ListView.builder(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          var data = items[index];
          return Column(children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              width: 95,
              height: 95,
              alignment: Alignment.center,
              child: Icon(
                data.image,
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
                Text(data.name),
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

  Widget _buildDealList() {
    var items = addItems();
    return Container(
      height: 200,
      alignment: Alignment.centerLeft,
      child: ListView.builder(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          var data = items[index];
          return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(10),
                  width: 130,
                  height: 140,
                  alignment: Alignment.center,
                  child: Icon(
                    data.image,
                    size: 40,
                    color: Colors.black38,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(4),
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
                Container(
                  width: 130,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    data.name,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 4, left: 4),
                  width: 130,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Rs.320',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ]);
        },
      ),
    );
  }

  List<Product> addItems() {
    var list = List<Product>();

    var data1 = Product('House Hold', CartIcons.house_hold);
    list.add(data1);
    var data2 = Product('Grocery', CartIcons.grocery);
    list.add(data2);
    var data3 = Product('Liquor', CartIcons.liquor);
    list.add(data3);
    var data4 = Product('Breads', CartIcons.bread);
    list.add(data4);

    return list;
  }
}
