import 'package:elevenx_emoji_food_ordering/burgerPage.dart';
import 'package:elevenx_emoji_food_ordering/foodtabs.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        blurRadius: 6.0,
                        spreadRadius: 4.0,
                        offset: Offset(0.0, 3.0),
                      ),
                    ],
                    color: Color(0xFFC6E7FE),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/tuxedo.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              'SEARCH FOR',
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 36.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              'RECIPES',
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 36.0),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Container(
              padding: EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  border: InputBorder.none,
                  fillColor: Colors.grey.withOpacity(0.5),
                  hintStyle: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              'Recommended',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 23),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 200,
            child: ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                _buildListItem(
                  name: 'Hamburg',
                  image: 'assets/burger.png',
                  price: '21',
                  color1: Colors.orange,
                  color2: Colors.white,
                ),
                _buildListItem(
                  name: 'Cheese',
                  image: 'assets/cheese.png',
                  price: '21',
                  color1: Colors.orange,
                  color2: Colors.white,
                ),
                _buildListItem(
                  name: 'Doughnut',
                  image: 'assets/doughnut.png',
                  price: '21',
                  color1: Colors.orange,
                  color2: Colors.white,
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15),
            child: TabBar(
              isScrollable: true,
              indicatorColor: Colors.transparent,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey.withOpacity(0.5),
              labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              unselectedLabelStyle:
                  TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              tabs: [
                Tab(
                  child: Text('FEATURED'),
                ),
                Tab(
                  child: Text('COMBO'),
                ),
                Tab(
                  child: Text('FAVORITES'),
                ),
                Tab(
                  child: Text('RECOMMENDED'),
                ),
              ],
              controller: _tabController,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 450,
            child: TabBarView(
              children: [
                Foodtab(),
                Foodtab(),
                Foodtab(),
                Foodtab(),
              ],
              controller: _tabController,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildListItem(
      {String name, String image, String price, Color color1, Color color2}) {
    return Padding(
      padding: EdgeInsets.only(left: 15),
      child: InkWell(
        child: AspectRatio(
          aspectRatio: 1 / 1.2,
          child: Container(
            decoration: BoxDecoration(
              color: color1,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Hero(
                  tag: name,
                  child: Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: Center(
                      child: Image.asset(
                        image,
                        height: 50,
                        width: 50,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  name,
                  style: TextStyle(fontSize: 17, color: color2),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '\$$price',
                  style:
                      TextStyle(fontSize: 17, color: color2, letterSpacing: 2),
                )
              ],
            ),
          ),
        ),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => BurgerPage(image, name, price, name)));
        },
      ),
    );
  }
}
