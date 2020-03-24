import 'package:flutter/material.dart';

class Foodtab extends StatefulWidget {
  @override
  _FoodtabState createState() => _FoodtabState();
}

class _FoodtabState extends State<Foodtab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          _buildListItem(
              title: 'Delicious Hotdog',
              rating: 4,
              price: 6,
              image: 'assets/hotdog.png'),
          _buildListItem(
              title: 'Delicious Hotdog',
              rating: 4,
              price: 6,
              image: 'assets/hotdog.png'),
          _buildListItem(
              title: 'Delicious Hotdog',
              rating: 4,
              price: 6,
              image: 'assets/hotdog.png'),
        ],
      ),
    );
  }

  Widget _buildListItem({String title, int rating, int price, String image}) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: 210,
            child: Row(
              children: <Widget>[
                Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Color(0xFFFFE3DF),
                  ),
                  child: Center(
                    child: Image.asset(
                      image,
                      height: 50,
                      width: 50,
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: 14.0, fontWeight: FontWeight.w400),
                    ),
                    Row(
                      children: <Widget>[],
                    )
                  ],
                ),
                FloatingActionButton(
                    heroTag: title,
                    backgroundColor: Color(0xFFFE7D6A),
                    mini: true,
                    onPressed: () {},
                    child: Center(
                      child: Icon(Icons.add, color: Colors.white),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
