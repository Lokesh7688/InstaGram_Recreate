import 'package:flutter/material.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  final List<String> _stories = [
    "https://pbs.twimg.com/profile_images/1226694019352154114/DDG9qPm0_400x400.jpg",
    "https://pbs.twimg.com/profile_images/1247567101616746496/YuhgEjc__400x400.jpg",
    "https://pbs.twimg.com/profile_images/1252291880383066113/D6W1qowt_400x400.jpg",
    "https://pbs.twimg.com/profile_images/1226660746932523009/VLKnQgyd_400x400.jpg",
    "https://pbs.twimg.com/profile_images/1226694019352154114/DDG9qPm0_400x400.jpg",
    "https://pbs.twimg.com/profile_images/1247567101616746496/YuhgEjc__400x400.jpg",
    "https://pbs.twimg.com/profile_images/1252291880383066113/D6W1qowt_400x400.jpg",
    "https://pbs.twimg.com/profile_images/1226660746932523009/VLKnQgyd_400x400.jpg",
  ];

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
            padding: const EdgeInsets.all(0.0),
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
            width: 4.0,
          ),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 65,
                margin: EdgeInsets.symmetric(
                  vertical: 20.0,
                ),
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: _stories.map((image) {
                    return Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 5.0,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40.0),
                          border: Border.all(
                            width: 1,
                            color: Color(0xff0095B6),
                          )),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          40.0,
                        ),
                        child: Image(
                          image: NetworkImage(
                            (image),
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.home,
            ),
            title: new Text(
              "Home",
              style: TextStyle(
                fontSize: 10,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.search,
            ),
            title: new Text(
              "Search",
              style: TextStyle(
                fontSize: 10,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.add_circle_outline,
              size: 40,
            ),
            title: new Text(
              "Upload",
              style: TextStyle(
                fontSize: 10,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.favorite_border,
            ),
            title: new Text(
              "Notify",
              style: TextStyle(
                fontSize: 10,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.account_circle,
            ),
            title: new Text(
              "profile",
              style: TextStyle(
                fontSize: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
