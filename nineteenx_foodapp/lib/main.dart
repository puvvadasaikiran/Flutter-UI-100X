import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nineteenx_foodapp/DetailsScreen.dart';
import 'constants.dart';
import 'widgets/FoodCart.dart';
import 'widgets/categoryTile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery',
      theme: ThemeData(
          fontFamily: "Poppins",
          scaffoldBackgroundColor: kWhiteColor,
          primaryColor: kPrimaryColor,
          textTheme: TextTheme(
            headline: TextStyle(fontWeight: FontWeight.bold),
            title: TextStyle(fontWeight: FontWeight.bold),
            button: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        padding: EdgeInsets.all(10),
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kPrimaryColor.withOpacity(0.26),
        ),
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: kPrimaryColor,
          ),
          child: SvgPicture.asset("assets/icons/plus.svg"),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 50),
            child: Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(
                  "assets/icons/menu.svg"), //Icon(Icons.more_vert),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Simple way to find \nTasty food",
              style: Theme.of(context).textTheme.headline,
            ),
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                CategoryTitle('All', true),
                CategoryTitle('Italian', false),
                CategoryTitle('Indian', false),
                CategoryTitle('Chineese', false),
                CategoryTitle('Asian', false),
                CategoryTitle('Burger', false),
                CategoryTitle('Swiss', false),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: kBorderColor)),
            child: SvgPicture.asset("assets/icons/search.svg"),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            child: Row(
              children: <Widget>[
                FoodCard(
                    'Vegan Salad Bowl',
                    'With Red Tomato',
                    'Eaque ut error quia officia. Eos tempore expedita qui. Ut nostrum pariatur animi aut. Eaque magnam voluptas ab consequatur beatae corporis quasi blanditiis.',
                    '23',
                    '420',
                    "assets/images/image_1.png"),
                FoodCard(
                    'Cabbage Salad Squad',
                    'With Sqwashed potato',
                    'Eaque ut error quia officia. Eos tempore expedita qui. Ut nostrum pariatur animi aut. Eaque magnam voluptas ab consequatur beatae corporis quasi blanditiis.',
                    '43',
                    '370',
                    "assets/images/image_2.png"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
