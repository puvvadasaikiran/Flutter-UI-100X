import 'package:flutter/material.dart';
import 'package:twentyonex_book/bestoftheday.dart';
import 'package:twentyonex_book/bookRating.dart';
import 'package:twentyonex_book/constants.dart';
import 'package:twentyonex_book/roundedButton.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Container(
                  height: size.height * .4,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/bg.png"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: size.height * 0.1,
                        ),
                        BookInfo(),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height * .4 - 30),
                  child: Column(
                    children: <Widget>[
                      ChapterTile(size: size),
                      ChapterTile(size: size),
                      ChapterTile(size: size),
                      ChapterTile(size: size),
                      ChapterTile(size: size),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "You might also Like ...",
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
          
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: BestOfTheDayCard(
                size: size,
              ),
            )
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
      ),
    );
  }
}

class ChapterTile extends StatelessWidget {
  const ChapterTile({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      width: size.width - 48,
      padding: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 30,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(38.5),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 35,
              color: Color(0xFFD3D3D3).withOpacity(0.84),
            ),
          ]),
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Chapter 1 : Money \n",
                  style: TextStyle(
                      fontSize: 16,
                      color: kBlackColor,
                      fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: "Life is about to change",
                  style: TextStyle(
                    color: kBlackColor,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: () {})
        ],
      ),
    );
  }
}

class BookInfo extends StatelessWidget {
  const BookInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Crushing &", style: Theme.of(context).textTheme.headline4),
              Text(
                "Influence",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                      child: Column(
                    children: <Widget>[
                      Text(
                        "I dont know what i am doing with this when i have some life that is going to be restarted soon !! but who cares when no one can stop thta from happening that sucks to core :-(",
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 10,
                          color: kLightBlackColor,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      RoundedButton(
                        verticlePadding: 10,
                        buttonName: "Read",
                        press: () {},
                      )
                    ],
                  )),
                  Column(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.favorite_border),
                        onPressed: () {},
                      ),
                      BookRating(
                        score: 4.9,
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        Image.asset(
          "assets/images/book-1.png",
          height: 200,
        )
      ],
    );
  }
}
