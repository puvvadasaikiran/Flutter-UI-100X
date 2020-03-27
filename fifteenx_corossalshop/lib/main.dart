import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    ));

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<List<String>> products = [
    [
      'assets/images/watch-1.jpg',
      'Hugo Boss Oxygen',
      '108 \$',
    ],
    [
      'assets/images/watch-2.jpg',
      'Hugo Boss Signature',
      '120 \$',
    ],
    [
      'assets/images/watch-3.jpg',
      'Cashio G-Shock Premium',
      '80 \$',
    ],
  ];

  int currentIndex = 0;

  void next() {
    setState(() {
      if (currentIndex < products.length - 1) {
        currentIndex++;
      } else {
        currentIndex = 0;
      }
    });
  }

  void previous() {
    setState(() {
      if (currentIndex > 0) {
        currentIndex--;
      } else {
        currentIndex = products.length - 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            GestureDetector(
              onHorizontalDragEnd: (DragEndDetails details) {
                if (details.velocity.pixelsPerSecond.dx > 0) {
                  previous();
                } else if (details.velocity.pixelsPerSecond.dx < 0) {
                  next();
                }
              },
              child: Container(
                width: double.infinity,
                height: (MediaQuery.of(context).size.height) * 2 / 3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      products[currentIndex][0],
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                      gradient:
                          LinearGradient(begin: Alignment.bottomRight, colors: [
                    Colors.grey[700].withOpacity(0.9),
                    Colors.grey.withOpacity(0.0),
                  ])),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 60),
                        width: 90,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: _buildindicator(),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
                child: Transform.translate(
              offset: Offset(0, -40),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      products[currentIndex][1],
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          products[currentIndex][2],
                          style: TextStyle(
                            color: Colors.yellow[700],
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              color: Colors.yellow[700],
                              size: 18,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow[700],
                              size: 18,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow[700],
                              size: 18,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow[700],
                              size: 18,
                            ),
                            Icon(
                              Icons.star_half,
                              color: Colors.yellow[700],
                              size: 18,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "(4.2/50 reviews)",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            )
                          ],
                        )
                      ],
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.yellow[800],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text('ADD TO CART',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15),),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }

  Widget _indicator(bool isActive) {
    return Expanded(
      child: Container(
        height: 4,
        margin: EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: isActive ? Colors.grey[800] : Colors.white,
        ),
      ),
    );
  }

  List<Widget> _buildindicator() {
    List<Widget> indicators = [];

    for (int i = 0; i < products.length; i++) {
      if (currentIndex == i) {
        indicators.add(_indicator(true));
      } else {
        indicators.add(_indicator(false));
      }
    }

    return indicators;
  }
}
