import 'package:bottom_nav_flutter/posts.dart';
import 'package:flutter/cupertino.dart';
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

  List<post> posts = [
    post(
      Username: "Narendramodi",
      UserImage:
          "https://pbs.twimg.com/profile_images/1249934092994375680/xX66NSZP_400x400.jpg",
      PostedImage:
          "https://instagram.fjai1-2.fna.fbcdn.net/v/t51.2885-15/sh0.08/e35/s750x750/106470626_683362015839983_8411456334679807048_n.jpg?_nc_ht=instagram.fjai1-2.fna.fbcdn.net&_nc_cat=1&_nc_ohc=Qihxfe5hRmUAX9835jO&oh=eb0f10e8bcf5d63a02bdef3ad008f5f2&oe=5F29AC8E",
      ImageText: "Indian Army is Love",
    ),
    post(
      Username: "ShashiKant",
      UserImage:
          "https://pbs.twimg.com/profile_images/1249934092994375680/xX66NSZP_400x400.jpg",
      PostedImage:
          "https://pbs.twimg.com/profile_images/1247567101616746496/YuhgEjc__400x400.jpg",
      ImageText: "Indian Army is Love",
    ),
    post(
      Username: "Harsh_Khatri",
      UserImage:
          "https://pbs.twimg.com/profile_images/1249934092994375680/xX66NSZP_400x400.jpg",
      PostedImage:
          "https://pbs.twimg.com/profile_images/1249934092994375680/xX66NSZP_400x400.jpg",
      ImageText: "Indian Army is Love",
    ),
    post(
      Username: "Rohit_Goyal",
      UserImage:
          "https://pbs.twimg.com/profile_images/1249934092994375680/xX66NSZP_400x400.jpg",
      PostedImage:
          "https://pbs.twimg.com/profile_images/1249934092994375680/xX66NSZP_400x400.jpg",
      ImageText: "Indian Army is Love",
    ),
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
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 90,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: _stories.map(
                      (story) {
                        return Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.symmetric(
                                horizontal: 10.0,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50.0),
                                  border: Border.all(
                                    width: 2,
                                    color: Color(0xff8e4445),
                                  )),
                              child: Container(
                                padding: EdgeInsets.all(
                                  2.0,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                    50.0,
                                  ),
                                  child: Image(
                                    image: NetworkImage(
                                      (story.image),
                                    ),
                                    height: 50,
                                    width: 50,
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
              ),
              Divider(),
              Container(
                color: Colors.black,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: posts.length,
                  itemBuilder: (context, index) => Container(
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(40.0),
                                child: Image(
                                  image: NetworkImage(posts[index].UserImage),
                                  width: 40,
                                  height: 40,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(posts[index].Username),
                              SizedBox(
                                width: 130.0,
                              ),
                              IconButton(
                                icon: Icon(Icons.more_vert),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                        Image(
                          image: NetworkImage(
                            posts[index].PostedImage,
                          ),
                          width: MediaQuery.of(context).size.width,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(Icons.favorite_border),
                                  onPressed: () {},
                                ),
                                IconButton(
                                  icon: Icon(Icons.chat_bubble_outline),
                                  onPressed: () {},
                                ),
                                IconButton(
                                  icon: Icon(Icons.send),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                            IconButton(
                              icon: Icon(Icons.bookmark_border),
                              onPressed: () {},
                              iconSize: 35,
                            ),
                          ],
                        ),
                        Text('Liked by')
                      ],
                    ),
                  ),
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
