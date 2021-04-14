import 'package:badges/badges.dart';
import 'package:ecomm_test_app/body_elements/drawer.dart';
import 'package:ecomm_test_app/body_elements/newArrivalList.dart';
// import 'file:///C:/Users/USER/AndroidStudioProjects/ecomm_test_app/lib/body_elements/overview.dart';
import 'package:flutter/material.dart';

import 'cart.dart';

class newArival extends StatefulWidget {
  @override
  _newArivalState createState() => _newArivalState();
}

class _newArivalState extends State<newArival> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: new AppBar(
            iconTheme: IconThemeData(color: Colors.white),
            elevation: 0.1,
//            title is been used to set the title of the appbar
            title: Text(
              "Your logo",
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
          body: ListView(
            children: [
              //the   headers part begins

              //the end  headers part
              Container(
                color: Color(0XFF03ADC1),
                child: TabBar(
                    indicatorColor: Colors.white70,
                    labelColor: Colors.white,
                    tabs: [
                      Tab(
                        text: "Women",
                      ),
                      Tab(
                        text: "Accessories",
                      ),
                      Tab(
                        text: "Men",
                      ),
                      Tab(
                        text: "Kids",
                      )
                    ]),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: TabBarView(children: [
                  newArrivalList(),
                  newArrivalList(),
                  newArrivalList(),
                  newArrivalList()
                ]),
              ),
            ],
          )),
    );
  }
}

//      SizedBox(
//                 height: 50,
//                 child: ListTile(
//                   leading: Text(
//                     "New Arrival",
//                     style: TextStyle(color: Colors.black45, fontSize: 24.0),
//                   ),
//                   trailing: SizedBox(
//                     width: 50,
//                     child: Row(
//                       children: [
//                         Expanded(
//                             child: IconButton(
//                                 icon: Icon(Icons.apps), onPressed: () {}))
//                      ,  Expanded(
//                             child: IconButton(
//                                 icon: Icon(Icons.apps), onPressed: () {}))
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
