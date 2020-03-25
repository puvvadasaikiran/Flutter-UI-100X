import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  final String image;
  final String title;
  final String hero;

  CategoryPage(this.image, this.title, this.hero);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
              child: Column(
          children: <Widget>[
            Hero(
              tag: widget.image,
              child: Material(
                child: Container(
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        colors: [
                          Colors.black.withOpacity(0.7),
                          Colors.black.withOpacity(0.0),
                        ],
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          widget.title,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
