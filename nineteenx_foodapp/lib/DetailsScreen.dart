import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nineteenx_foodapp/constants.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: SvgPicture.asset(
                    "assets/icons/backward.svg",
                    height: 11,
                  ),
                ),
                SvgPicture.asset(
                  "assets/icons/menu.svg",
                  height: 11,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              padding: EdgeInsets.all(6),
              height: 305,
              width: 305,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kSecondaryColor,
              ),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/image_1_big.png"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "Vegan Salad Bowl\n",
                          style: Theme.of(context).textTheme.title),
                      TextSpan(
                        text: "With Red Tomato",
                        style: TextStyle(
                          color: kTextColor.withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "\$20",
                  style: Theme.of(context)
                      .textTheme
                      .headline
                      .copyWith(color: kPrimaryColor),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
                "Tomatino Ur jet Ut ut modi debitis qui voluptatem dolorem incidunt cum harum.Non sit quis aliquam consectetur eligendi.Dolorem quam necessitatibus aut eligendi nam molestias mollitia nostrum aut.Vero eos libero corporis aut explicabo.Animi recusandae odio ducimus et. Non est ut magni. Laborum laudantium labore fugiat. Reiciendis quia quasi ut eum consequatur. Enim inventore voluptatum qui id at quae delectus illum quis."),
            SizedBox(
              height: 30,
            ),
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 27),
                  decoration: BoxDecoration(
                      color: kPrimaryColor.withOpacity(0.19),
                      borderRadius: BorderRadius.circular(28)),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Add to Bag",
                        style: Theme.of(context).textTheme.button,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      SvgPicture.asset(
                        "assets/icons/forward.svg",
                        height: 11,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: kPrimaryColor.withOpacity(0.26),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: kPrimaryColor,
                          ),
                          child: Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                          ) //SvgPicture.asset("assets/icons/bag.svg",),
                          ),
                      Positioned(
                        right: 9,
                        bottom: 5,
                        child: Container(
                          alignment: Alignment.center,
                          height: 22,
                          width: 22,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: kWhiteColor,
                          ),
                          child: Text(
                            "0",
                            style: Theme.of(context)
                                .textTheme
                                .button
                                .copyWith(color: kPrimaryColor, fontSize: 16),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            )
          ],
        ),
      ),
    );
  }
}
