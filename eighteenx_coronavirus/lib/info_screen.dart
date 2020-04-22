import 'package:eighteenx_coronavirus/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'widgets/SymptonCard.dart';
import 'widgets/my_header.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: <Widget>[
            MyHeader(
                "assets/icons/coronadr.svg", "Get to know", "About CoVid-19",false),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Symptoms",
                    style: kTitleTextStyle,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SymptomCard(
                          "assets/images/headache.png", "Headache", true),
                      SymptomCard("assets/images/fever.png", "Fever", false),
                      SymptomCard("assets/images/caugh.png", "Cough", false),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Prevention",
                    style: kTitleTextStyle,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  PreventionCard(
                    "assets/images/wear_mask.png",
                    "Wear a face mask",
                    "Since the start of the coronavirus outbreak some places have fully embraced wearing them",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  PreventionCard(
                    "assets/images/wash_hands.png",
                    "Wash your Hands",
                    "Wash your Hands for 20 secounds atleast to get rid of any germs and microbials on yor hand",
                  ),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PreventionCard extends StatelessWidget {
  final String image;
  final String title;
  final String text;

  const PreventionCard(this.image, this.title, this.text);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 156,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: <Widget>[
          Container(
            height: 136,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 8), blurRadius: 24, color: kShadowColor)
              ],
            ),
          ),
          Image.asset(image),
          Positioned(
            left: 130,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              height: 136,
              width: MediaQuery.of(context).size.width - 170,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    title,
                    style: kTitleTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    text,
                    style: TextStyle(fontSize: 12),
                  ),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: SvgPicture.asset("assets/icons/forward.svg"))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
