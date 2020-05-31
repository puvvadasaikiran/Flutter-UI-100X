import 'package:flutter/material.dart';
import 'package:twentyonex_book/constants.dart';
import 'package:twentyonex_book/details_screen.dart';

import 'ReadingListCard.dart';
import 'bestoftheday.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.topCenter,
              fit: BoxFit.fitWidth,
              image: AssetImage(
                "assets/images/main_page_bg.png",
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: size.height * 0.1,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 28.0),
                child: RichText(
                  text: TextSpan(
                      style: Theme.of(context).textTheme.headline4,
                      children: [
                        TextSpan(text: "What are you \nreading "),
                        TextSpan(
                            text: "today?",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ]),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    ReadingListcard(
                      image: "assets/images/book-1.png",
                      title: "crushing & Influence",
                      author: "Gary Vanchuk",
                      rating: 4.9,
                      pressDetail: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailsScreen()));
                      },
                      pressRead: () {},
                    ),
                    ReadingListcard(
                      image: "assets/images/book-2.png",
                      title: "Top 10 Business Hacks",
                      author: "Hell Damn",
                      rating: 4.1,
                      pressDetail: () {},
                      pressRead: () {},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.headline4,
                        children: [
                          TextSpan(text: "Best of the "),
                          TextSpan(
                              text: "day",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    BestOfTheDayCard(size: size),
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.headline4,
                        children: [
                          TextSpan(text: "Continue "),
                          TextSpan(
                            text: "reading...",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 80,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(38.5),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 33,
                              color: Color(0xFFD3D3D3).withOpacity(0.84))
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(38.5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      right: 20, left: 30),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: <Widget>[
                                            Text(
                                              "Crushing and Influence",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "Gary Venchuk",
                                              style: TextStyle(
                                                  color: kLightBlackColor),
                                            ),
                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: Text(
                                                "Chapter 7 of 10",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: kLightBlackColor),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            )
                                          ],
                                        ),
                                      ),
                                      Image.asset(
                                        "assets/images/book-1.png",
                                        width: 55,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 7,
                              width: size.width * 0.65,
                              decoration: BoxDecoration(
                                color: kProgressIndicator,
                                borderRadius: BorderRadius.circular(7),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
