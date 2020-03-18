import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        brightness: Brightness.light,
        leading: Icon(null),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_basket),
            color: Colors.grey[800],
            onPressed: () {},
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Food Delivery',
                    style: TextStyle(
                      color: Colors.grey[80],
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    child: ListView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makecategory(
                          isActive: true,
                          title: 'Pizza',
                        ),
                        makecategory(
                          isActive: false,
                          title: 'Burgers',
                        ),
                        makecategory(
                          isActive: false,
                          title: 'Kebab',
                        ),
                        makecategory(
                          isActive: false,
                          title: 'Desert',
                        ),
                        makecategory(
                          isActive: false,
                          title: 'Salad',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Free Delivery',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    makeItem(
                      image: 'assets/images/4.jpg',
                      title: 'Vegetarian Pizza',
                      price: '15.00',
                    ),
                    makeItem(
                      image: 'assets/images/3.jpg',
                      title: 'Macaroni Pizza',
                      price: '19.00',
                    ),
                    makeItem(
                      image: 'assets/images/2.jpg',
                      title: 'Seasonal Pizza',
                      price: '25.00',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }

  Widget makecategory({bool isActive, String title}) {
    return AspectRatio(
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: isActive ? Colors.yellow[700] : Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Align(
          child: Text(
            title,
            style: TextStyle(
              color: isActive ? Colors.white : Colors.grey[500],
              fontWeight: isActive ? FontWeight.bold : FontWeight.w300,
              fontSize: 18,
            ),
          ),
        ),
        // color: Colors.yellow,
      ),
      aspectRatio: isActive ? 3 : 2.5 / 1,
    );
  }

  Widget makeItem({String image, String title, String price}) {
    return AspectRatio(
      aspectRatio: 1 / 1.4,
      child: GestureDetector(
        child: Container(
          margin: EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            //color: Colors.red,
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                stops: [.2, .9],
                colors: [
                  Colors.black.withOpacity(.9),
                  Colors.black.withOpacity(.3),
                  //Colors.black.withOpacity(.9),
                ],
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(
                20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '\$$price',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '$title',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
