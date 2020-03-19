// import 'package:fivex_actor_profile/FadeAnimation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: <Widget>[
              SliverAppBar(
                // title: Text('Madhuri Puvvada'),
                expandedHeight: 450,
                backgroundColor: Colors.black,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/1.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          colors: [
                            Colors.black,
                            Colors.black.withOpacity(0.3),
                          ],
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            // FadeAnimation(
                            //   1,
                            Text(
                              'Madhuri Puvvada',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  '60 Videos',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Text(
                                  '248k Subscribers',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Itaque est qui possimus soluta fugiat aut quisquam. Fugit aut nulla velit quisquam. Eum fugit excepturi architecto placeat culpa at. Natus laboriosam consequatur voluptas est aut saepe.",
                            style: TextStyle(color: Colors.grey, height: 1.4),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            'Born',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'November, 31st 1998, Suryapet, Telangana, India',
                            style: TextStyle(
                              color: Colors.grey,
                              // fontSize: 18,
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Nationality',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Indian',
                            style: TextStyle(
                              color: Colors.grey,
                              // fontSize: 18,
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Videos',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                            height: 200,
                            child: ListView(
                              physics: BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                makeVideo(image: 'assets/images/1.jpg'),
                                makeVideo(image: 'assets/images/1.jpg'),
                                makeVideo(image: 'assets/images/1.jpg'),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 100,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Positioned.fill(
            bottom: 20,
            child: Container(
              child: Align(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.yellow[700],
                  ),
                  child: Align(
                    child: Text(
                      'Follow',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                alignment: Alignment.bottomCenter,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget makeVideo({String image}) {
    return AspectRatio(
      aspectRatio: 1.5 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.7),
                Colors.black.withOpacity(.3),
              ],
            ),
          ),
          child: Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.play_circle_filled,
              color: Colors.white,
              size: 70,
            ),
          ),
        ),
      ),
    );
  }
}
