import 'package:flutter/material.dart';
import 'package:twentyonex_book/constants.dart';
import 'package:twentyonex_book/homepage.dart';
import 'package:twentyonex_book/roundedButton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Book App',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme:
              Theme.of(context).textTheme.apply(displayColor: kBlackColor)),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Bitmap.png"),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.headline2,
                children: [
                  TextSpan(
                    text: "flamin",
                  ),
                  TextSpan(
                    text: "go.",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.6,
              child: RoundedButton(
                buttonName: "start reading",
                fontSize: 16,
                press: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctxt) => HomeScreen()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
