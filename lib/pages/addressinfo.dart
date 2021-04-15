import 'package:badges/badges.dart';
import 'package:ecomm_test_app/body_elements/drawer.dart';
import 'package:ecomm_test_app/pages/cart.dart';
import 'package:ecomm_test_app/pages/make_payment.dart';
import 'package:flutter/material.dart';

class addressinfo extends StatefulWidget {
  @override
  _addressinfoState createState() => _addressinfoState();
}

class _addressinfoState extends State<addressinfo> {
  bool _validate = false;
  TextEditingController address1controller = new TextEditingController();
  TextEditingController address2controller = new TextEditingController();

  TextEditingController commentcontroller = new TextEditingController();
  TextEditingController zipcodecontroller = new TextEditingController();

  String validatePassword(String value) {
    if (!(value.length > 5) && value.isNotEmpty) {
      return "Password should contain more than 5 characters";
    }
    return null;
  }

  final _formkey = GlobalKey<FormState>();
  List country_list = ["Nigeria", "Ghana"];
  List city_list = ["onisha", "owerri", "lagos"];
  List province_list = ["server knows", "server really knows the answer"];
  String country_dropdownValue;
  String city_dropdownValue;
  String province_dropdownValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0.1,
//            title is been used to set the title of the appbar
        title: Text(
          "Address",
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
      bottomNavigationBar: SizedBox(
        height: 70,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Expanded(
                  child: Material(
                    color: Color(0XFF03ADC1),
                    child: FlatButton(
                        color: Color(0XFF03ADC1),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => makepayment(),
                              ));
                        },
                        child: Text(
                          "NEXT",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0XFFEDECEC),
        ),
        child: Form(
          key: _formkey,
          child: ListView(children: [
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: DropdownButtonFormField(
                          dropdownColor: Colors.black54,

                          // value: gender_dropdownValue,
                          icon: Icon(Icons.arrow_drop_down),
                          iconSize: 24,
                          elevation: 16,
                          style: TextStyle(
                            color: Color(0xFFA39F9F),
                          ),
                          onChanged: (String newValue) {
                            setState(() {
                              // gender_dropdownValue = newValue;
                            });
                          },
                          // value:gender_dropdownValue ,
                          items: country_list
                              .map<DropdownMenuItem<String>>((item) {
                            return DropdownMenuItem<String>(
                              value: item,
                              child: Text(item),
                            );
                          }).toList(),
                          decoration: InputDecoration(
                            enabledBorder: InputBorder.none,
                            labelText: "Country",
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Please choose a Country";
                            } else {
                              return null;
                            }
                          },
                        )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: DropdownButtonFormField(
                          dropdownColor: Colors.black54,

                          // value: gender_dropdownValue,
                          icon: Icon(Icons.arrow_drop_down),
                          iconSize: 24,
                          elevation: 16,
                          style: TextStyle(
                            color: Color(0xFFA39F9F),
                          ),
                          onChanged: (String newValue) {
                            setState(() {
                              // gender_dropdownValue = newValue;
                            });
                          },
                          // value:gender_dropdownValue ,
                          items:
                              city_list.map<DropdownMenuItem<String>>((item) {
                            return DropdownMenuItem<String>(
                              value: item,
                              child: Text(item),
                            );
                          }).toList(),
                          decoration: InputDecoration(
                            enabledBorder: InputBorder.none,
                            labelText: "City",
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Please choose a City";
                            } else {
                              return null;
                            }
                          },
                        )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: DropdownButtonFormField(
                          dropdownColor: Colors.black54,

                          // value: gender_dropdownValue,
                          icon: Icon(Icons.arrow_drop_down),
                          iconSize: 24,
                          elevation: 16,
                          style: TextStyle(
                            color: Color(0xFFA39F9F),
                          ),
                          onChanged: (String newValue) {
                            setState(() {
                              // gender_dropdownValue = newValue;
                            });
                          },
                          // value:gender_dropdownValue ,
                          items: province_list
                              .map<DropdownMenuItem<String>>((item) {
                            return DropdownMenuItem<String>(
                              value: item,
                              child: Text(item),
                            );
                          }).toList(),
                          decoration: InputDecoration(
                            enabledBorder: InputBorder.none,
                            labelText: "Province",
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Please choose a Province";
                            } else {
                              return null;
                            }
                          },
                        )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SizedBox(
                      height: 56,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: TextFormField(
                                    controller: zipcodecontroller,
                                    keyboardType: TextInputType.number,
                                    style: TextStyle(
                                      color: Color(0xFFB3B6B7),
                                    ),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      labelText: "Zip Code",
                                      // errorText: "Enter Your First Name",
                                    ),
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return "Please enter ZIp code";
                                      } else {
                                        return null;
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SizedBox(
                      height: 56,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: TextFormField(
                                    controller: address1controller,
                                    keyboardType: TextInputType.text,
                                    style: TextStyle(
                                      color: Color(0xFFB3B6B7),
                                    ),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      labelText: "Address 1",

                                      // errorText: "Enter Your Last Name",
                                    ),
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return "Please enter LAddress";
                                      } else {
                                        return null;
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SizedBox(
                      height: 56,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: TextFormField(
                                    controller: address2controller,
                                    keyboardType: TextInputType.text,
                                    style: TextStyle(
                                      color: Color(0xFFB3B6B7),
                                    ),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      labelText: "Address 2",
                                      // errorText: "Enter Your Email Address",
                                    ),
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return "Please enter Your Address";
                                      } else {
                                        return null;
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 176,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Expanded(
                            flex: 3,
                            child: SizedBox(
                              height: 150,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(16, 0, 16, 8),
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Material(
                                          color: Color(0XFF03ADC1),
                                          child: TextFormField(
                                            maxLines: null,
                                            expands: true,
                                            controller: commentcontroller,
                                            keyboardType:
                                                TextInputType.multiline,
                                            style: TextStyle(
                                              color: Color(0xFFB3B6B7),
                                            ),
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              labelText: "Comments ",
                                              // errorText: "Enter Your Phone Number",
                                            ),
                                            validator: (value) {
                                              if (value.isEmpty) {
                                                return "Please enterYour  Commentsr";
                                              } else {
                                                return null;
                                              }
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )

                            // SizedBox(
                            //   height: 200,
                            //   child: TextFormField(
                            //     controller: commentcontroller,
                            //     keyboardType: TextInputType.multiline,
                            //     style: TextStyle(
                            //       color: Color(0xFFB3B6B7),
                            //     ),
                            //     decoration: InputDecoration(
                            //       border: InputBorder.none,
                            //       labelText: "Comments ",
                            //       // errorText: "Enter Your Phone Number",
                            //     ),
                            //     validator: (value) {
                            //       if (value.isEmpty) {
                            //         return "Please enterYour  Commentsr";
                            //       } else {
                            //         return null;
                            //       }
                            //     },
                            //   ),
                            // ),
                            ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
