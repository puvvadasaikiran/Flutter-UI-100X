import 'package:flutter/material.dart';
import 'package:tenx_downloadanimation/ButtonAnimation.dart';

void main() => runApp(
      MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()),
    );

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ButtonAnimation(),
        ],
      ),
    );
  }
}
