import 'package:flutter/material.dart';
import 'package:nineteenx_foodapp/DetailsScreen.dart';

import '../constants.dart';

class FoodCard extends StatelessWidget {
  final String foodName;
  final String featuring;
  final String foodRecipe;
  final String price;
  final String kCal;
  final String image;
  FoodCard(this.foodName, this.featuring, this.foodRecipe, this.price,
      this.kCal, this.image);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => DetailsScreen()));
      },
      child: Container(
        height: 400,
        width: 270,
        margin: EdgeInsets.only(right: 20, left: 10),
        child: Stack(
          children: <Widget>[
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                margin: EdgeInsets.only(left: 20),
                height: 380,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(34),
                  color: kPrimaryColor.withOpacity(0.06),
                ),
              ),
            ),
            Positioned(
              left: 10,
              top: 10,
              child: Container(
                height: 181,
                width: 181,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kPrimaryColor.withOpacity(0.15),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: -50,
              child: Container(
                width: 276,
                height: 184,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 22,
              top: 90,
              child: Text(
                "\$$price",
                style: Theme.of(context)
                    .textTheme
                    .headline
                    .copyWith(color: kPrimaryColor),
              ),
            ),
            Positioned(
              top: 201,
              left: 40,
              child: Container(
                width: 210,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      foodName,
                      style: Theme.of(context).textTheme.title,
                    ),
                    Text(
                      featuring,
                      style: TextStyle(color: kTextColor.withOpacity(0.4)),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      foodRecipe, maxLines: 4,

                      // overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: kTextColor.withOpacity(
                          0.65,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text("${kCal}Kcal")
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
