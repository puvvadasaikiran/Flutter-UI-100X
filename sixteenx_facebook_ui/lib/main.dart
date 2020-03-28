import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 50, right: 20, left: 20, bottom: 10),
            height: 120,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    // padding: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey[200]),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        hintText: 'Search',
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.camera_alt, color: Colors.grey[800], size: 30)
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: <Widget>[
                        Text(
                          'Stories',
                          style: TextStyle(
                            color: Colors.grey[900],
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            letterSpacing: 0.4,
                          ),
                        ),
                        Text('See Archive'),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 180,
                      child: ListView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          makeStory(
                              storyImage: 'assets/story/story-1.jpg',
                              userImage: 'assets/1.jpg',
                              userName: 'Zimboka'),
                          makeStory(
                              storyImage: 'assets/story/story-2.jpg',
                              userImage: 'assets/2.jpg',
                              userName: 'Sammy Square'),
                          // makeStory(
                          //     storyImage: 'assets/story/story-3.jpg',
                          //     userImage: 'assets/3.jpg',
                          //     userName: 'jammy Pants'),
                          // makeStory(
                          //     storyImage: 'assets/story/story-4.jpg',
                          //     userImage: 'assets/4.jpg',
                          //     userName: 'ShitterPantz'),
                          // makeStory(
                          //     storyImage: 'assets/story/story-5.jpg',
                          //     userImage: 'assets/5.jpg',
                          //     userName: 'funky Smilex'),
                          // makeStory(
                          //     storyImage: 'assets/story/story-6.jpg',
                          //     userImage: 'assets/6.jpg',
                          //     userName: 'Aj'),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    makeFeed(
                        userName: 'Aiony Humle',
                        userimage: 'assets/2.jpg',
                        feddTime: '1 hr ago',
                        feedImage: 'assets/story/story-2.jpg',
                        feedText:
                            'We love the things we make with ZERO Knowledge !!!!'),
                    makeFeed(
                        userName: 'FunkySmilex',
                        userimage: 'assets/5.jpg',
                        feddTime: '3 hr ago',
                        feedImage: '',
                        feedText:
                            'We love the things we make with ZERO Knowledge !!!!'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget makeStory({String storyImage, String userImage, String userName}) {
    return AspectRatio(
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(storyImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.1),
            ], begin: Alignment.bottomRight),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 2),
                  image: DecorationImage(
                      image: AssetImage(userImage), fit: BoxFit.cover),
                ),
              ),
              Text(
                userName,
                style: TextStyle(
                  color: Colors.white,
                  // fontSize: 20,
                  // fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
      aspectRatio: 1.6 / 2,
    );
  }

  Widget makeFeed({userName, userimage, feddTime, feedText, feedImage}) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(userimage),
                          fit: BoxFit.cover,
                        )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        userName,
                        style: TextStyle(
                            color: Colors.grey[900],
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        feddTime,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Icon(
                Icons.more_horiz,
                color: Colors.grey[600],
                size: 30,
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            feedText,
            style: TextStyle(
                fontSize: 15,
                color: Colors.grey[800],
                height: 1.5,
                letterSpacing: 0.7),
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: 20,
          ),
          feedImage != ''
              ? Container(
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(feedImage),
                        fit: BoxFit.cover,
                      )),
                )
              : Container(),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  makeLikes(Icons.thumb_up, Colors.blue),
                  Transform.translate(
                      offset: Offset(-5, 0),
                      child: makeLikes(Icons.favorite, Colors.red)),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '2.5K',
                    style: TextStyle(fontSize: 15, color: Colors.grey[800]),
                  )
                ],
              ),
              Text(
                '400 Comments',
                style: TextStyle(fontSize: 15, color: Colors.grey[800]),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              makeLikeButton(true),
              makeShareButton(Icons.comment, 'Comment'),
              makeShareButton(Icons.share, 'Share'),
            ],
          )
        ],
      ),
    );
  }

  Widget makeLikes(IconData icon, Color colorback) {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: colorback,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)),
      child: Center(
        child: Icon(
          icon,
          size: 12,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget makeLikeButton(bool isActive) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey[200],
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.thumb_up,
              color: isActive ? Colors.blue : Colors.grey,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Like',
              style: TextStyle(
                color: isActive ? Colors.blue : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget makeShareButton(IconData icon, String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey[200],
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              color: Colors.grey,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              text,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
