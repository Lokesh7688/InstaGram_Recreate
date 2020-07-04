import 'package:flutter/material.dart';
import 'usersstories.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  List<story> _stories = [
    story(
      "https://pbs.twimg.com/profile_images/1226694019352154114/DDG9qPm0_400x400.jpg",
      "Your Story",
    ),
    story(
      "https://pbs.twimg.com/profile_images/1247567101616746496/YuhgEjc__400x400.jpg",
      "ShashiKant",
    ),
    story(
      "https://pbs.twimg.com/profile_images/1252291880383066113/D6W1qowt_400x400.jpg",
      "Harsh Khatri",
    ),
    story(
      "https://pbs.twimg.com/profile_images/1226660746932523009/VLKnQgyd_400x400.jpg",
      "Rohit Goyal",
    ),
    story(
      "https://pbs.twimg.com/profile_images/1249811932070047744/dWK41SkM_400x400.jpg",
      "Arvind Sharma",
    ),
    story(
        "https://pbs.twimg.com/profile_images/1249934092994375680/xX66NSZP_400x400.jpg",
        "Narendra Modi"),
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
                height: 100,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: _stories.map(
                    (story) {
                      return Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: 8.0,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60.0),
                                border: Border.all(
                                  width: 2,
                                  color: Color(0xff8e44ff),
                                )),
                            child: Container(
                              padding: EdgeInsets.all(
                                2.0,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                  60.0,
                                ),
                                child: Image(
                                  image: NetworkImage(
                                    (story.image),
                                  ),
                                  height: 60,
                                  width: 60,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              story.username,
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                        ],
                      );
                    },
                  ).toList(),
                ),
              ),
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
