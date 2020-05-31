import 'package:flutter/material.dart';
import 'package:twentyonex_book/bookRating.dart';

import 'constants.dart';
import 'twoSideRoundedButton.dart';

class BestOfTheDayCard extends StatelessWidget {
  const BestOfTheDayCard({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      height: 205,
      // color: Colors.black,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding:
                  EdgeInsets.only(left: 24, top: 24, right: size.width * 0.32),
              height: 185,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xFFAEAEA).withOpacity(0.45),
                  borderRadius: BorderRadius.circular(29)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "New York Time Best For 11th March 2020",
                    style: TextStyle(
                      color: kLightBlackColor,
                      fontSize: 9,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'How to Win \nFriends & Influence',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Dale Carnegie",
                    style: TextStyle(
                      color: kLightBlackColor,
                      // fontSize: 9,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      BookRating(score: 4.9),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Text(
                        "Sarigamapa little champs manam emo ayomayam den thalli enduku ee badha sallabadu raadhe koddi sepu",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 10, color: kLightBlackColor),
                      ))
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Image.asset(
              "assets/images/book-3.png",
              width: size.width * 0.37,
            ),
          ),
          Positioned(
              bottom: 0,
              // left: 0,
              right: 0,
              child: SizedBox(
                height: 40,
                width: size.width * 0.3,
                child: TwoSideRoundBtton(
                  buttonName: "Read",
                  press: () {},
                  radius: 24,
                ),
              ))
        ],
      ),
    );
  }
}
