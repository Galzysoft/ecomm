import 'package:badges/badges.dart';
import 'package:ecomm_test_app/body_elements/cardpayments.dart';
import 'package:ecomm_test_app/body_elements/drawer.dart';
import 'package:ecomm_test_app/pages/terms_and_Conditon.dart';
import 'package:flutter/material.dart';

import 'cart.dart';

class makepayment extends StatefulWidget {
  @override
  _makepaymentState createState() => _makepaymentState();
}

class _makepaymentState extends State<makepayment> {
  String codee = "1A0BC45";
  bool ispay = false;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        floatingActionButton: Visibility(
          visible: ispay,
          child: FloatingActionButton(
            backgroundColor: Color(0XFF0095A4),
            onPressed: () {},
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
        appBar: new AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          elevation: 0.1,
//            title is been used to set the title of the appbar
          title: Text(
            "Payment",
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
                onPressed: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new termsandcondition()));
                }),

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
        bottomNavigationBar: SizedBox(
          height: 70,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Expanded(
                child: Material(
                  color: Color(0XFF03ADC1),
                  child: FlatButton(
                      color: Color(0XFF03ADC1),
                      onPressed: () {
                        setState(() {
                          ispay = true;
                        });
                        showDialog(
                            context: context,
                            builder: (context) {
                              return new AlertDialog(
                                content: SizedBox(
                                  width: 400,
                                  height: 440,
                                  child: Center(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(24.0),
                                          child: new Container(
                                            width: 300,
                                            height: 220,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Color(0XFF03ADC1),
                                                    width: 1),
                                                borderRadius:
                                                    BorderRadius.circular(200)),
                                            child: Center(
                                              child: Column(
                                                children: [
                                                  Expanded(
                                                    flex: 2,
                                                    child: Icon(Icons.done,
                                                        size: 50,
                                                        color:
                                                            Color(0XFF03ADC1)),
                                                  ),
                                                  Expanded(
                                                    child: Text(
                                                      "Succesful",
                                                      style: TextStyle(
                                                        color:
                                                            Color(0XFF03ADC1),
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          "Thank You For Your Purchase",
                                          style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          "ORDER CODE",
                                          style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "$codee",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }).then((value) => ispay = false);
                      },
                      child: Text(
                        "MAKE PAYMENT",
                        style: TextStyle(color: Colors.white),
                      )),
                ),
              ),
            ),
          ),
        ),
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
                      text: "Credt Cart",
                    ),
                    Tab(
                      text: "Ayx Cart",
                    ),
                    Tab(
                      text: "Bank Cart",
                    )
                  ]),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: TabBarView(children: [
                cardpayment(),
                cardpayment(),
                cardpayment(),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
