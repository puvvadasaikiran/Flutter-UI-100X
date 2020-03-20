import 'package:flutter/material.dart';
import 'package:sevenx_login/signup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15, 110, 0, 0),
                  child: Text(
                    'Hello',
                    style: TextStyle(
                      fontSize: 80,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(15, 175, 0, 0),
                  child: Text(
                    'There',
                    style: TextStyle(
                      fontSize: 80,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(190, 175, 0, 0),
                  child: Text(
                    '.',
                    style: TextStyle(color: Colors.green, fontSize: 80),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 35, left: 20, right: 20),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    labelText: 'EMAIL',
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                      // fontSize: 18,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'PASSWORD',
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                      // fontSize:18,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  child: MaterialButton(
                    onPressed: () {},
                    minWidth: double.infinity,
                    color: Colors.green,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: 2.0)),
                  child: MaterialButton(
                    onPressed: () {},
                    minWidth: double.infinity,
                    // color: Colors.black,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      'Log in with Facebook',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: 105,
                    ),
                    Text(
                      'New to Spotify?',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUp()));
                      },
                      child: Text(
                        ' Register',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                            fontSize: 17),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
