import 'package:flutter/material.dart';

class BurgerPage extends StatefulWidget {
  final imgPath, foodname, pricePerItem, heroTag;

  BurgerPage(this.imgPath, this.foodname, this.pricePerItem, this.heroTag);

  @override
  _BurgerPageState createState() => _BurgerPageState();
}

class _BurgerPageState extends State<BurgerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      height: 45,
                      width: 45,
                      decoration:
                          BoxDecoration(shape: BoxShape.circle, boxShadow: [
                        BoxShadow(
                            blurRadius: 6,
                            color: Colors.grey.withOpacity(6),
                            offset: Offset(7, 0))
                      ]),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
