import 'package:badges/badges.dart';
import 'package:ecomm_test_app/body_elements/drawer.dart';
import 'package:ecomm_test_app/body_elements/overview.dart';
import "package:flutter/material.dart";

import 'cart.dart';

class profile extends StatefulWidget {
  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: new AppBar(

            iconTheme: IconThemeData(color: Colors.white),
            elevation: 0.1,
//            title is been used to set the title of the appbar
            title: Text(
              "Profile",
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
                child: InkWell(onTap: (){
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
          body: ListView(
            children: [
              //the   headers part begins
              SizedBox(
                  height: 150,
                  child: Container(
                    color: Color(0XFF03ADC1),
                    child: Center(
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.white70,
                        child: Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage("images/passs.jpg"),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                    ),
                  )),

              //the end  headers part
              Container(color: Color(0XFF03ADC1),
                child: TabBar(indicatorColor: Colors.white70,

                    labelColor: Colors.white,
                    tabs: [
                  Tab(
                    text: "Overview",
                  ),
                  Tab(
                    text: "My WishList",
                  ), Tab(
                    text: "Shopping History",
                  )
                ]),
              )
              ,
              SizedBox(height: MediaQuery.of(context).size.height,
                child: TabBarView(
                    children: [overview(),overview(),overview()]),
              ),
            ],
          )),
    );
  }
}
