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
        elevation: 20,
        title: Image.network(
          'https://www.higgidy.co.uk/sites/default/themes/custom/higgidy/assets/img/uploads/instagram-logo-text.png',
          width: 140.0,
          fit: BoxFit.contain,
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.near_me,
                color: Colors.white,
                size: 35.0,
              ),
            ),
          ),
          SizedBox(
            width: 18.0,
          ),
        ],
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
