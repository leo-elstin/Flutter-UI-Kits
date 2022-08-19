import 'package:flutter/material.dart';
import 'package:flutter_widgets/wallpaper_kit/models/images_list_model.dart';
import 'package:flutter_widgets/wallpaper_kit/services/image_service.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Wallpapers extends StatelessWidget {
  const Wallpapers({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        color: Colors.white,
          child: ListView(
            // shrinkWrap: true,
            children: <Widget>[
              header(),
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
                child: Text(
                  'Free stunning walls for you..',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              latestWalls(context),
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
                child: Text(
                  'Travel !',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
                child: Text(
                  'Featuring travellers from around the world as they explore destinations & adventures.',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300
                  ),
                ),
              ),
              gridList(context)
            ],
          ),
        
      ),
    );
  }
}

Widget latestWalls(context) {
  return Container(
    padding: EdgeInsets.only(left: 8),
    height: MediaQuery.of(context).size.width * 0.85,
    child: FutureBuilder(
      future: getImages(type: 'black cars'),
      builder: (BuildContext context, AsyncSnapshot<ImagesListModel> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting)
          return Center(child: CircularProgressIndicator());
        else if (snapshot.data != null)
          return ListView.builder(
            itemCount: snapshot.data.results.length,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (BuildContext listContext, index) {
              Result data = snapshot.data.results[index];
              return Container(
                height: MediaQuery.of(context).size.width * 0.75,
                width: MediaQuery.of(context).size.width * 0.50,
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(data.urls.small),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              );
            },
          );
        else
          return Container();
      },
    ),
  );
}

Widget gridList(context) {
  return Container(
    // height: 700,
    child: FutureBuilder(
      future: getImages(type: 'travel'),
      builder: (BuildContext context, AsyncSnapshot<ImagesListModel> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting)
          return Center(child: CircularProgressIndicator());
        else if (snapshot.data != null)
          return StaggeredGridView.countBuilder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 4,
            itemCount: snapshot.data.results.length,
            itemBuilder: (BuildContext context, int index) {
              Result data = snapshot.data.results[index];
              return Container(
                height: MediaQuery.of(context).size.width * 0.75,
                width: MediaQuery.of(context).size.width * 0.50,
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(data.urls.small),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              );
            },
            staggeredTileBuilder: (int index) =>
                new StaggeredTile.count(2, index.isEven ? 3 : 1.5),
            mainAxisSpacing: 2.0,
            crossAxisSpacing: 2.0,
          );
        else
          return Container();
      },
    ),
  );
}

Widget header() {
  return Container(
    height: 50,
    child: ListView(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 16, right: 32),
          child: Text('Latest',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 32, right: 32),
          child: Text('Toplist',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w100,
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 32, right: 32),
          child: Text('Random',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w100,
              )),
        )
      ],
    ),
  );
}
