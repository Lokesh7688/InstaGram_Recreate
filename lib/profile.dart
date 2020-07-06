import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: userprofile(),
    );
  }
}

class userprofile extends StatefulWidget {
  @override
  _userprofileState createState() => _userprofileState();
}

class _userprofileState extends State<userprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff09031d),
      appBar: AppBar(
        title: Text(
          'Yahi_to_look_hai_boos',
          style: TextStyle(
            fontSize: 17,
          ),
        ),
        elevation: 2,
        backgroundColor: Color(0xff09031d),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.toc,
              size: 35,
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 10),
                child: CircleAvatar(
                  radius: 35,
                  backgroundImage: NetworkImage(
                      'https://pbs.twimg.com/profile_images/1226694019352154114/DDG9qPm0_400x400.jpg'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(
                  20,
                  20,
                  15,
                  12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '301',
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w100,
                              color: Colors.white),
                        ),
                        Text(
                          'Post',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 0.2,
                      width: 22,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '356K',
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w100,
                              color: Colors.white),
                        ),
                        Text(
                          'Followers',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 0.2,
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '95',
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w100,
                              color: Colors.white),
                        ),
                        Text(
                          'Following',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 220, top: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Luv Kashyap",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Container(
                  height: 10.2,
                ),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(29, 10, 50, 0),
                child: Text(
                  "Python Devloper | Web Devloper | Dart | Flutter | Ruby Programmer.",
                  style: TextStyle(
                    height: 1.5,
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  color: Color(0xff64B5F6),
                  padding: EdgeInsets.only(
                    left: 120,
                    right: 120,
                  ),
                  onPressed: () {},
                  child: Text(
                    'Edit Profile',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 195,
                      ),
                      child: Text(
                        "Story Highlights ",
                        style: TextStyle(
                          height: 1.5,
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 38,
                      ),
                      child: Text(
                        "Keep your favurite stories on your profile.",
                        style: TextStyle(
                          height: 1.5,
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(
                          Icons.add_circle,
                          size: 80.0,
                          color: Color(0xff64B5F6),
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "New",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Color(0xff64B5F6),
                            child: CircleAvatar(
                              backgroundColor: Color(0xff09031d),
                              radius: 28,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Color(0xff64B5F6),
                            child: CircleAvatar(
                              backgroundColor: Color(0xff09031d),
                              radius: 28,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Color(0xff64B5F6),
                            child: CircleAvatar(
                              backgroundColor: Color(0xff09031d),
                              radius: 28,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Color(0xff64B5F6),
                            child: CircleAvatar(
                              backgroundColor: Color(0xff09031d),
                              radius: 28,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Divider(
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
