import 'package:flutter/material.dart';

import 'bookRating.dart';
import 'constants.dart';
import 'twoSideRoundedButton.dart';

class ReadingListcard extends StatelessWidget {
  final String image;
  final String title;
  final String author;
  final double rating;
  final Function pressDetail;
  final Function pressRead;
  const ReadingListcard({
    Key key,
    this.image,
    this.title,
    this.author,
    this.rating,
    this.pressDetail,
    this.pressRead,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24, bottom: 40, right: 8),
      height: 245,
      width: 202,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 221,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(29),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 33,
                      color: kShadowColor),
                ],
              ),
            ),
          ),
          Image.asset(
            image,
            width: 150,
          ),
          Positioned(
            top: 35,
            right: 10,
            child: Column(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  onPressed: () {},
                ),
                BookRating(
                  score: rating,
                )
              ],
            ),
          ),
          Positioned(
            top: 160,
            child: Container(
              height: 85,
              width: 202,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 24),
                    child: RichText(
                      maxLines: 2,
                      text: TextSpan(
                        style: TextStyle(
                          color: kBlackColor,
                        ),
                        children: [
                          TextSpan(
                            text: "$title\n",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                            text: "$author",
                            style: TextStyle(
                                color: kLightBlackColor.withOpacity(0.4)),
                          )
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: pressDetail,
                        child: Container(
                          width: 101,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.center,
                          child: Text("Details"),
                        ),
                      ),
                      Expanded(
                        child: TwoSideRoundBtton(
                          buttonName: "Read",
                          press: pressRead,
                          radius: 29,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
