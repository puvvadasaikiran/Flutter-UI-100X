import 'package:flutter/material.dart';
import 'package:twelvex_shoeshop/Shoes.dart';
import 'package:page_transition/page_transition.dart';

void main() => runApp(MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: null,
        // centerTitle: true,
        title: Text(
          'Shoes',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications_none,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Container(
                height: 40,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    buildChipSelector(true, 'All'),
                    buildChipSelector(false, 'Sneakers'),
                    buildChipSelector(false, 'Football'),
                    buildChipSelector(false, 'Soccer'),
                    buildChipSelector(false, 'Golf'),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              makeItem(
                  image: 'assets/one.jpg', tag: 'nike-red', context: context),
              makeItem(
                  image: 'assets/two.jpg', tag: 'nike-blue', context: context),
              makeItem(
                  image: 'assets/three.jpg',
                  tag: 'nike-white',
                  context: context),
            ],
          ),
        ),
      ),
    );
  }

  Widget makeItem({String image, String tag, BuildContext context}) {
    return Hero(
      tag: tag,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(PageTransition(type: PageTransitionType.fade,child: Shoes(image)));
        },
        child: Container(
          margin: EdgeInsets.only(bottom: 20),
          padding: EdgeInsets.all(20),
          height: 250,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10,
                offset: Offset(0, 10),
              ),
            ],
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sneakers',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Nike',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.red,
                      ),
                    ),
                  )
                ],
              ),
              Text(
                '100\$',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AspectRatio buildChipSelector(bool selected, String title) {
    return AspectRatio(
      aspectRatio: selected ? 2 / 1 : 2.2 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: selected
            ? BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(20),
              )
            : BoxDecoration(),
        child: Center(
          child: Text(
            title,
            style: selected
                ? TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
                : TextStyle(
                    fontSize: 17,
                  ),
          ),
        ),
      ),
    );
  }
}
