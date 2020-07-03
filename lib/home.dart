import 'package:flutter/material.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.network(
          'https://www.edigitalagency.com.au/wp-content/uploads/instagram-font-logo-white-png.png',
          height: 100.0,
          width: 100.0,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.home,
            ),
            title: new Text(
              "Home",
            ),
          ),
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.search,
            ),
            title: new Text(
              "Search",
            ),
          ),
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.add_circle_outline,
              size: 40,
            ),
            title: new Text(
              "Upload",
            ),
          ),
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.favorite_border,
            ),
            title: new Text(
              "Notify",
            ),
          ),
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.account_circle,
            ),
            title: new Text(
              "profile",
            ),
          ),
        ],
      ),
    );
  }
}
