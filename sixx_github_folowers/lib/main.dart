import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          width: double.infinity,
          color: Colors.black,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 100,
                ),
                Container(
                  width: 80,
                  height: 80,
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    backgroundImage: NetworkImage(
                        'https://icon-library.net/images/github-icon-png/github-icon-png-29.jpg'),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Github",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 150,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: _controller,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      hintText: "Github Username",
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  onPressed: () {
                    _getUser();
                  },
                  padding: EdgeInsets.symmetric(vertical: 20),
                  minWidth: double.infinity,
                  color: Colors.green.withOpacity(.9),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  elevation: 0,
                  child: Text(
                    'Get Your Followers',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                // Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextEditingController _controller = TextEditingController();

  void _getUser() {
    if (_controller.text == '') {
      
    } else {


    }
  }
}
