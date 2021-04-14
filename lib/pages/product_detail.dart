import 'package:badges/badges.dart';
import 'package:ecomm_test_app/body_elements/drawer.dart';
import 'package:ecomm_test_app/pages/contact_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'cart.dart';

class productDetails extends StatefulWidget {
  final String PROD_NAME;
  final String PICTURE;
  final double PRICE;
  final int RATING;
  final String CARTEGORY;

//   HERE LETS CREATE A CONSTRUCTOR
  productDetails({
    this.PROD_NAME,
    this.PRICE,
    this.PICTURE,
    this.CARTEGORY,
    this.RATING,
  });

  @override
  _productDetailsState createState() => _productDetailsState();
}

class _productDetailsState extends State<productDetails> {
  bool isfav = false;
  bool isred = false,
      issky = false,
      ismilk = false,
      islemon = false,
      ispurple = false,
      isble = false,
      isxs = false,
      iss = false,
      ism = false,
      isl = false,
      isxl = false;

  selectsize() {
    if (isxs == true) {
      iss = false;
      ism = false;
      isl = false;
      isxl = false;
    }
    if (iss == true) {
      isxs = false;
      ism = false;
      isl = false;
      isxl = false;
    }
    if (ism == true) {
      isxs = false;
      iss = false;
      isl = false;
      isxl = false;
    }
    if (isl == true) {
      isxs = false;
      iss = false;
      ism = false;
      isxl = false;
    }
    if (isxl == true) {
      isxs = false;
      iss = false;
      ism = false;
      isl = false;
    }
  }

  selectcolor() {
    if (isred == true) {
      issky = false;
      ismilk = false;
      islemon = false;
      ispurple = false;
      isble = false;
    }
    if (issky == true) {
      isred = false;
      ismilk = false;
      islemon = false;
      ispurple = false;
      isble = false;
    }
    if (ismilk == true) {
      isred = false;
      issky = false;
      islemon = false;
      ispurple = false;
      isble = false;
    }
    if (islemon == true) {
      isred = false;
      issky = false;
      ismilk = false;
      ispurple = false;
      isble = false;
    }
    if (ispurple == true) {
      isred = false;
      issky = false;
      ismilk = false;
      islemon = false;
      isble = false;
    }
    if (isble == true) {
      isred = false;
      issky = false;
      ismilk = false;
      islemon = false;
      ispurple = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: Column(
          children: [
            SizedBox(
              height: 300,
              child: ListTile(
                title: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage(widget.PICTURE), fit: BoxFit.fill)),
                ),
                // subtitle:
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(children: [
                Container(
                  height: 4,
                  // color: Color(0xFF03ADC1),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        widget.PROD_NAME,
                        style: TextStyle(color: Colors.black87, fontSize: 18),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: RatingBar.builder(
                              initialRating: 3,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 20,
                              itemPadding:
                                  EdgeInsets.symmetric(horizontal: 4.0),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 1,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.1),
                        child: Text(
                          widget.CARTEGORY,
                          style: TextStyle(color: Colors.black87, fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(2.1),
                        child: Text(
                          "${widget.PRICE}",
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(
                              child: IconButton(
                            icon: isfav == false
                                ? Icon(
                                    Icons.favorite,
                                    color: Colors.black12,
                                  )
                                : Icon(
                                    Icons.favorite,
                                    color: Colors.black87,
                                  ),
                            onPressed: () {
                              setState(() {
                                if (isfav == false) {
                                  isfav = true;
                                } else {
                                  isfav = false;
                                }
                              });
                            },
                          )),
                        ],
                      ),
                    )
                  ],
                ),
              ]),
            ),
            ListTile(
              title: Text(
                "Color",
                style: TextStyle(color: Colors.black87),
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Container(
                        height: 28,
                        color: Color(0xFFFF1E00),
                        child: Center(
                          child: IconButton(
                            icon: Icon(
                              Icons.done,
                              color: isred == true
                                  ? Color(0xFFFFFFFF)
                                  : Color(0xFFFF1E00),
                            ),
                            onPressed: () {
                              if (isred == true) {
                                setState(() {
                                  isred = false;
                                  selectcolor();
                                });
                              } else {
                                setState(() {
                                  isred = true;
                                  selectcolor();
                                });
                              }
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 28,
                        color: Color(0xFF5FCCFF),
                        child: IconButton(
                          icon: Icon(
                            Icons.done,
                            color: issky == true
                                ? Color(0xFFFFFFFF)
                                : Color(0xFF5FCCFF),
                          ),
                          onPressed: () {
                            if (issky == true) {
                              setState(() {
                                issky = false;
                                selectcolor();
                              });
                            } else {
                              setState(() {
                                issky = true;
                                selectcolor();
                              });
                            }
                          },
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 28,
                        color: Color(0xFFE3D9C8),
                        child: IconButton(
                          icon: Icon(
                            Icons.done,
                            color: ismilk == true
                                ? Color(0xFFFFFFFF)
                                : Color(0xFFE3D9C8),
                          ),
                          onPressed: () {
                            if (ismilk == true) {
                              setState(() {
                                ismilk = false;
                                selectcolor();
                              });
                            } else {
                              setState(() {
                                ismilk = true;
                                selectcolor();
                              });
                            }
                          },
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 28,
                        color: Color(0xFFCECB1C),
                        child: IconButton(
                          icon: Icon(
                            Icons.done,
                            color: islemon == true
                                ? Color(0xFFFFFFFF)
                                : Color(0xFFCECB1C),
                          ),
                          onPressed: () {
                            if (islemon == true) {
                              setState(() {
                                islemon = false;
                                selectcolor();
                              });
                            } else {
                              setState(() {
                                islemon = true;
                                selectcolor();
                              });
                            }
                          },
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 28,
                        color: Color(0xFF9739CF),
                        child: IconButton(
                          icon: Icon(
                            Icons.done,
                            color: ispurple == true
                                ? Color(0xFFFFFFFF)
                                : Color(0xFF9739CF),
                          ),
                          onPressed: () {
                            if (ispurple == true) {
                              setState(() {
                                ispurple = false;
                                selectcolor();
                              });
                            } else {
                              setState(() {
                                ispurple = true;
                                selectcolor();
                              });
                            }
                          },
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 28,
                        color: Color(0xFF00359B),
                        child: IconButton(
                          icon: Icon(
                            Icons.done,
                            color: isble == true
                                ? Color(0xFFFFFFFF)
                                : Color(0xFF00359B),
                          ),
                          onPressed: () {
                            if (isble == true) {
                              setState(() {
                                isble = false;
                                selectcolor();
                              });
                            } else {
                              setState(() {
                                isble = true;
                                selectcolor();
                              });
                            }
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text(
                "Size",
                style: TextStyle(color: Colors.black87),
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: InkWell(
                        onTap: () {
                          if (isxs == true) {
                            setState(() {
                              isxs = false;
                              selectsize();
                            });
                          } else {
                            setState(() {
                              isxs = true;
                              selectsize();
                            });
                          }
                        },
                        child: Container(
                          height: 24,
                          color:
                              isxs == false ? Colors.white : Color(0XFF03ADC1),
                          child: Center(
                            child: Text("XS",
                                style: TextStyle(
                                    color: isxs == true
                                        ? Colors.white
                                        : Colors.black38)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: InkWell(
                        onTap: () {
                          if (iss == true) {
                            setState(() {
                              iss = false;
                              selectsize();
                            });
                          } else {
                            setState(() {
                              iss = true;
                              selectsize();
                            });
                          }
                        },
                        child: Container(
                          height: 24,
                          color:
                              iss == false ? Colors.white : Color(0XFF03ADC1),
                          child: Center(
                            child: Text("S",
                                style: TextStyle(
                                    color: iss == true
                                        ? Colors.white
                                        : Colors.black38)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: InkWell(
                        onTap: () {
                          if (ism == true) {
                            setState(() {
                              ism = false;
                              selectsize();
                            });
                          } else {
                            setState(() {
                              ism = true;
                              selectsize();
                            });
                          }
                        },
                        child: Container(
                          height: 24,
                          color:
                              ism == false ? Colors.white : Color(0XFF03ADC1),
                          child: Center(
                            child: Text("M",
                                style: TextStyle(
                                    color: ism == true
                                        ? Colors.white
                                        : Colors.black38)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: InkWell(
                        onTap: () {
                          if (isl == true) {
                            setState(() {
                              isl = false;
                              selectsize();
                            });
                          } else {
                            setState(() {
                              isl = true;
                              selectsize();
                            });
                          }
                        },
                        child: Container(
                          height: 24,
                          color:
                              isl == false ? Colors.white : Color(0XFF03ADC1),
                          child: Center(
                            child: Text("L",
                                style: TextStyle(
                                    color: isl == true
                                        ? Colors.white
                                        : Colors.black38)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: InkWell(
                        onTap: () {
                          if (isxl == true) {
                            setState(() {
                              isxl = false;
                              selectsize();
                            });
                          } else {
                            setState(() {
                              isxl = true;
                              selectsize();
                            });
                          }
                        },
                        child: Container(
                          height: 24,
                          color:
                              isxl == false ? Colors.white : Color(0XFF03ADC1),
                          child: Center(
                            child: Text("XL",
                                style: TextStyle(
                                    color: isxl == true
                                        ? Colors.white
                                        : Colors.black38)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: FlatButton(
                  color: Color(0XFF03ADC1),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => contactinfo(),
                        ));
                  },
                  child: Text(
                    "Buy now",
                    style: TextStyle(color: Colors.white),
                  )),
              title: Center(
                child: Text(
                  "ADD TO",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              subtitle: Center(
                child: Text(
                  "Wish List",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              trailing: FlatButton(
                  color: Color(0XFF03ADC1),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => cart(),
                        ));
                  },
                  child: Text(
                    "ADD TO CART",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            ListTile(
              title: Text(
                "DETAIL",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Column(children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 2, 8, 3),
                  child: Row(
                    children: [
                      Container(
                        height: 7,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Color(0XFFA09E9E),
                            shape: BoxShape.rectangle),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              " sed do eiusmod tempor incididunt ut labore et ",
                              style: TextStyle(
                                fontSize: 12,
                                // color: Color(0xFFB3B6B7)
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 2, 8, 3),
                  child: Row(
                    children: [
                      Container(
                        height: 7,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Color(0XFFA09E9E),
                            shape: BoxShape.rectangle),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              " sed do eiusmod tempor incididunt ut labore et ",
                              style: TextStyle(
                                fontSize: 12,
                                // color: Color(0xFFB3B6B7)
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 2, 8, 3),
                  child: Row(
                    children: [
                      Container(
                        height: 7,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Color(0XFFA09E9E),
                            shape: BoxShape.rectangle),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              " sed do eiusmod tempor incididunt ut labore et ",
                              style: TextStyle(
                                fontSize: 12,
                                // color: Color(0xFFB3B6B7)
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 2, 8, 3),
                  child: Row(
                    children: [
                      Container(
                        height: 7,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Color(0XFFA09E9E),
                            shape: BoxShape.rectangle),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              " sed do eiusmod tempor incididunt ut labore et ",
                              style: TextStyle(
                                fontSize: 12,
                                // color: Color(0xFFB3B6B7)
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 2, 8, 3),
                  child: Row(
                    children: [
                      Container(
                        height: 7,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Color(0XFFA09E9E),
                            shape: BoxShape.rectangle),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              " sed do eiusmod tempor incididunt ut labore et ",
                              style: TextStyle(
                                fontSize: 12,
                                // color: Color(0xFFB3B6B7)
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 2, 8, 3),
                  child: Row(
                    children: [
                      Container(
                        height: 7,
                        width: 20,
                        decoration: BoxDecoration(
                            color: Color(0XFFA09E9E),
                            shape: BoxShape.rectangle),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                              " sed do eiusmod tempor incididunt ut labore et ",
                              style: TextStyle(
                                fontSize: 12,
                                // color: Color(0xFFB3B6B7)
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 50,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      "CUSTOMERS REVIEW",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text(
                "onyeka ejimns",
                style: TextStyle(color: Colors.black54),
              ),
            ),
            ListTile(
              leading: RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 20,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 1,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
              trailing: Text(
                "2 days ago",
                style: TextStyle(color: Colors.black87, fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad"
                  "minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
            ),
            ListTile(
              title: Text(
                " ejimns benito",
                style: TextStyle(color: Colors.black54),
              ),
            ),
            ListTile(
              leading: RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 20,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 1,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
              trailing: Text(
                "2 days ago",
                style: TextStyle(color: Colors.black87, fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad"
                  "minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
            ),
          ],
        ),
      ),
    );
  }
}
