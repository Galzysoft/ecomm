import 'package:badges/badges.dart';
import 'package:ecomm_test_app/body_elements/drawer.dart';
import 'package:ecomm_test_app/single_elements/single_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'contact_info.dart';
import 'terms_and_Conditon.dart';

class cart extends StatefulWidget {
  @override
  _cartState createState() => _cartState();
}

class _cartState extends State<cart> {
  double total = 45.50;

  var product_list = [
//  this is a map for a single product

    {
      "name": "Black T-Shirt",
      "picture": "images/products/shoe (11).jpg",
      "prize": 3.34,
      "rating": 1,
      "cartegory": "shirt tino",
    },
    {
      "name": "Zino T-Shirt",
      "picture": "images/products/shoe (10).jpg",
      "prize": 23.34,
      "rating": 5,
      "cartegory": "shirt tino",
    },
    {
      "name": "Dark-Shirt",
      "picture": "images/products/shoe (3).jpg",
      "prize": 23.34,
      "rating": 6,
      "cartegory": "shirt tino",
    },
    {
      "name": "Galzys-Shirt",
      "picture": "images/products/shoe (5).jpg",
      "prize": 23.34,
      "rating": 5,
      "cartegory": "shirt tino",
    },
    {
      "name": "Blk T-Shirt",
      "picture": "images/products/shoe (8).jpg",
      "prize": 3.34,
      "rating": 1,
      "cartegory": "shirt tino",
    },
    {
      "name": "Zino T-Shirt",
      "picture": "images/products/shoe (10).jpg",
      "prize": 23.34,
      "rating": 5,
      "cartegory": "shirt tino",
    },
    {
      "name": "Dark-Shirt",
      "picture": "images/products/shoe (3).jpg",
      "prize": 23.34,
      "rating": 6,
      "cartegory": "shirt tino",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0.1,
//            title is been used to set the title of the appbar
        title: Text(
          "Cart",
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
        height: 120,
        child: Column(
          children: [
            ListTile(
              leading: SizedBox(
                width: 170,
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Sub Total = ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "3 Items",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              trailing: Text(
                "\$ $total",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: SizedBox(
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
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => contactinfo(),
                                  ));
                            },
                            child: Text(
                              "Add to Cart",
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        color: Color(0XFFEBEFF1),
        child: ListView.builder(
            shrinkWrap: true,
            // physics: const NeverScrollableScrollPhysics(),
            itemCount: product_list.length,
            itemBuilder: (context, index) {
              //  slidanble brgins        hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh

              return Padding(
                padding: const EdgeInsets.all(12.0),
                child: Slidable(
                  actionPane: SlidableDrawerActionPane(),
                  actionExtentRatio: 0.25,
                  child: Container(
                    child: singlecart(
                      PROD_NAME: product_list[index]["name"],
                      PRICE: product_list[index]["prize"],
                      PICTURE: product_list[index]["picture"],
                      CARTEGORY: product_list[index]["cartegory"],
                      RATING: product_list[index]["rating"],
                    ),
                  ),
                  secondaryActions: <Widget>[
                    Container(
                      color: Color(0XFFBFCCD2),
                      child: Column(
                        children: [
                          Expanded(
                            child: IconSlideAction(
                              iconWidget: Icon(
                                Icons.delete,
                                color: Colors.white70,
                              ),
                              color: Color(0XFF03ADC1),
                              // icon: Icons.delete,
                              onTap: () {},
                            ),
                          ),
                          Expanded(
                            child: IconSlideAction(
                              iconWidget: Icon(
                                Icons.archive,
                                color: Colors.white70,
                              ),
                              color: Color(0XFF03ADC1),
                              onTap: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );

              //  slidable endsjjkjjhhgggggggggggggggggggggggggggggggggggggggggg
            }),
      ),
    );
  }
}
