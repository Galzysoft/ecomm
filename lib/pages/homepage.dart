import 'package:badges/badges.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

import 'cart.dart';
import 'file:///C:/Users/USER/AndroidStudioProjects/ecomm_test_app/lib/body_elements/drawer.dart';
import 'file:///C:/Users/USER/AndroidStudioProjects/ecomm_test_app/lib/body_elements/mens_collection.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  String DETAIL_NAME = "2015 New Fashion Women";
  @override
  Widget build(BuildContext context) {
    //     here i want to decleare a widget for our carousel  heree outside the scarfold and later add it inside tjhe body in scaffold
    Widget Image_carousel = new Container(
//       here i specify the hieght of the  container

      child: new Carousel(
        boxFit: BoxFit.cover,
// here we declare the images to contain
        images: [
          AssetImage("images/c1.jpg"),
          AssetImage("images/c2.jpg"),
          AssetImage("images/c4.jpg"),
          AssetImage("images/c3.jpg"),
          AssetImage("images/c4.jpg"),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotColor: Colors.transparent,
        dotSize: 0.0,

        dotBgColor: Colors.transparent,
        indicatorBgPadding: 6.0,
      ),
    );

    return DefaultTabController(
      length: 3,
      child: Scaffold(
          floatingActionButton: FloatingActionButton(
            backgroundColor: Color(0XFF0095A4),
            onPressed: () {},
            child: Icon(
              Icons.mic,
              color: Colors.white,
            ),
          ),
          appBar: new AppBar(
            iconTheme: IconThemeData(color: Colors.white),
            elevation: 0.1,
//            title is been used to set the title of the appbar
            title: Text(
              "Your Photos",
              style: TextStyle(color: Colors.white),
            ),
//          backgroundColor  is been used to set the colors of the AppBar
//       backgroundColor: Colors.deepPurple,
//action is been used to to set buttons or iconbuttons like serach  etc in the appbar
            actions: <Widget>[
//            IconButtons are been used to  specify buttons thett contains icons expetially in appbar eg serch button is an Iconsbutton
              new IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  onPressed: () {}),

              Container(
                margin: const EdgeInsets.fromLTRB(0, 8, 5, 0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => cart(),
                        ));
                  },
                  child: Badge(
                      badgeContent: Text(
                        '1',
                        style: TextStyle(color: Colors.white),
                      ),
                      badgeColor: Colors.transparent,
                      animationType: BadgeAnimationType.slide,
                      child: Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                      )),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
            ],
          ),
          drawer: DrawerWidget(),
          body: SingleChildScrollView(
            child: new Column(
              children: [
                SizedBox(
                  height: 200.0,
                  child: GridTile(
                    child: Image_carousel,
                    footer: Container(
                      height: 70,
                      color: Colors.black45,
                      child: Center(
                          child: new Text(
                        DETAIL_NAME,
                        style: TextStyle(color: Colors.white, fontSize: 26.0),
                      )),
                    ),
                  ),
                ),
//         here we specify the padding by wrapting the container or widget  inside the padding
                Container(
                  color: Colors.white,
                  child: TabBar(indicatorColor: Colors.lightBlue, tabs: [
                    Tab(
                      text: "Men",
                    ),
                    Tab(
                      text: "Women",
                    ),
                    Tab(
                      text: "Boys",
                    )
                  ]),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: TabBarView(children: [
                    menscollection(
                      CARTEGORY: "Men",
                    ),
                    menscollection(
                      CARTEGORY: "Women",
                    ),
                    menscollection(
                      CARTEGORY: "Boys",
                    )
                  ]),
                ),
              ],
            ),
          )),
    );
  }
}
