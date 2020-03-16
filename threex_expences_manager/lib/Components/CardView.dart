import 'package:flutter/material.dart';
import 'package:threex_expences_manager/Models/card_model.dart';

class CardView extends StatefulWidget {
  final CardModel model;

  const CardView({Key key, this.model}) : super(key: key);
  @override
  _CardViewState createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      child: AspectRatio(
        aspectRatio: 3.1 / 2,
        child: GestureDetector(
          onTap: () {},
          child: Container(
            // margin: EdgeInsets.only(right:20),
            decoration: BoxDecoration(
                color: Colors.black87, borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red.withOpacity(0.8),
                            ),
                          ),
                          Transform.translate(
                            offset: Offset(-15, 0),
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.orange.withOpacity(0.8),
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            widget.model.available.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 38,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            widget.model.currency,
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Text(
                          widget.model.name,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      FittedBox(
                        child: Text(
                          widget.model.number,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              letterSpacing: 10,
                              fontWeight: FontWeight.bold),
                        ),
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
