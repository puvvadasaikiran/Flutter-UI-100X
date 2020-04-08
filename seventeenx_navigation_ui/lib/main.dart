import 'package:flutter/material.dart';
import 'package:seventeenx_navigation_ui/themes.dart';

import 'CollapsingNavigationDrawer.dart';

void main() => runApp(MaterialApp(
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: drawerBackGroundColor,
        //   title: Text("Collapsing NavBar"),
        //   centerTitle: true,
        // ),
        body: Stack(
          children: <Widget>[
            Container(
              color: Colors.red,
            ),
            CollapsingNavigationDrawer(),
          ],
        ),
        // drawer: CollapsingNavigationDrawer(),
      ),
    );
  }
}
