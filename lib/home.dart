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
          "https://static.telegraphindia.com/derivative/THE_TELEGRAPH/1678939/16X9/image94e33f65-eaaa-43f3-bcb4-3739d2300cf8.jpg",
      ImageText: "Indian Army is Love",
    ),
    post(
      Username: "ShashiKant",
      UserImage:
          "https://pbs.twimg.com/profile_images/1247567101616746496/YuhgEjc__400x400.jpg",
      PostedImage:
          "https://www.telegraph.co.uk/content/dam/art/2016/10/04/picasso-xlarge_trans_NvBQzQNjv4BqqVzuuqpFlyLIwiB6NTmJwbKTcqHAsmNzJMPMiov7fpk.jpg",
      ImageText: "Developing my self to become developer",
    ),
    post(
      Username: "Harsh_Khatri",
      UserImage:
          "https://pbs.twimg.com/profile_images/1252291880383066113/D6W1qowt_400x400.jpg",
      PostedImage:
          "https://s3.amazonaws.com/s3.timetoast.com/public/uploads/photos/8396907/my-guernica-susana-varela-guillot.jpg?1478488648",
      ImageText: "Complited Lots of certificates. ^_^' ",
    ),
    post(
      Username: "Rohit_Goyal",
      UserImage:
          "https://pbs.twimg.com/profile_images/1226660746932523009/VLKnQgyd_400x400.jpg",
      PostedImage:
          "https://i.pinimg.com/originals/46/0a/b0/460ab011fede084cc3680bf473784dc0.jpg",
      ImageText: "learning every day",
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
                  height: 80,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: _stories.map(
                      (story) {
                        return Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.symmetric(
                                horizontal: 12.0,
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
                              padding: const EdgeInsets.all(5.0),
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
                          padding: EdgeInsets.fromLTRB(14, 0, 5, 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(
                                  35.0,
                                ),
                                child: Image(
                                  image: NetworkImage(posts[index].UserImage),
                                  width: 35,
                                  height: 35,
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
                                  color: Colors.red,
                                  icon: Icon(Icons.favorite),
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
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 14,
                          ),
                          width: MediaQuery.of(context).size.width,
                          child: RichText(
                              softWrap: true,
                              overflow: TextOverflow.visible,
                              text: TextSpan(
                                children: [
                                  TextSpan(text: "Liked by "),
                                  TextSpan(
                                      text: " Rahul_gandhi, ",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                    text: " Sonia_gandhi, ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                      text: "and ",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      )),
                                  TextSpan(
                                    text: "1220 Others ",
                                  ),
                                ],
                              )),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 5,
                          ),
                          width: MediaQuery.of(context).size.width,
                          child: RichText(
                            softWrap: true,
                            overflow: TextOverflow.visible,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: posts[index].Username,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    )),
                                TextSpan(
                                  text: ' ${posts[index].ImageText}',
                                  style: TextStyle(),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 5,
                          ),
                          width: MediaQuery.of(context).size.width,
                          child: RichText(
                            softWrap: true,
                            overflow: TextOverflow.visible,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "View all 100 comments",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(14, 0, 80, 0),
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(40.0),
                                child: Image(
                                  image: NetworkImage(posts[index].UserImage),
                                  width: 25,
                                  height: 25,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                "Add Comments....",
                                style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontSize: 13,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                width: 120.0,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(14, 8, 270, 0),
                          child: Text(
                            "50 Minutes ago",
                            style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontSize: 10,
                              color: Colors.grey,
                            ),
                          ),
                        ),
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
