import 'package:flutter/material.dart';

import '../constants.dart';

class Counter extends StatelessWidget {
  final int number;
  final Color color;
  final String title;
  const Counter(this.number, this.color, this.title);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: color.withOpacity(.26)),
          child: Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.transparent,
              border: Border.all(
                color: color,
                width: 2,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(number.toString(),
            style: TextStyle(
              fontSize: 40,
              color: color,
            )),
        Text(title, style: kSubTextStyle),
      ],
    );
  }
}


