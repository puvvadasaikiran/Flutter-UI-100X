import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:thieteenx_ecommerce/CategoryPage.dart';

class Shop extends StatefulWidget {
  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: (MediaQuery.of(context).size.height) * 1.8 / 3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/background.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(0.7),
                      Colors.black.withOpacity(0.2),
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 35.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          IconButton(
                              icon: Icon(
                                Icons.favorite,
                                color: Colors.white,
                              ),
                              onPressed: () {}),
                          IconButton(
                              icon: Icon(
                                Icons.shopping_cart,
                                color: Colors.white,
                              ),
                              onPressed: () {})
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Our New Products',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 30),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  'VIEW MORE',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                  size: 15,
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        'Categories',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'All',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 150,
                    child: ListView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeCategoryTile('assets/beauty.jpg', 'Beauty'),
                        makeCategoryTile('assets/clothes.jpg', 'Clothes'),
                        makeCategoryTile('assets/perfume.jpg', 'Perfume'),
                        makeCategoryTile('assets/glass.jpg', 'Glass'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        'Best-Selling by Category',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'All',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 150,
                    child: ListView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeBestSellingTile('assets/tech.jpg', 'Tech'),
                        makeBestSellingTile('assets/watch.jpg', 'Watch'),
                        makeBestSellingTile('assets/beauty.jpg', 'Beauty'),
                        makeBestSellingTile('assets/glass.jpg', 'Glass'),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget makeCategoryTile(String image, String title) {
    return AspectRatio(
      aspectRatio: 2 / 2.5,
      child: Hero(
        tag: image,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                PageTransition(
                    child: CategoryPage(image, title, image),
                    type: PageTransitionType.fade));
          },
          child: Material(
            child: Container(
              margin: EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover)),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(0.7),
                      Colors.black.withOpacity(0.0),
                    ],
                  ),
                ),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      title,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 19),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget makeBestSellingTile(String image, String title) {
    return AspectRatio(
      aspectRatio: 3 / 2.2,
      child: Container(
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(0.7),
                Colors.black.withOpacity(0.0),
              ],
            ),
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 19),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
