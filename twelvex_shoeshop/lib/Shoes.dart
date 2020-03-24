import 'package:flutter/material.dart';

class Shoes extends StatelessWidget {
  final String tag;

  Shoes(this.tag);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Hero(
          tag: tag,
          child: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage(tag), fit: BoxFit.fitHeight)),
          ),
        ),
      ),
    );
  }
}
