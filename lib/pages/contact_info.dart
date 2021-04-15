import 'package:badges/badges.dart';
import 'package:ecomm_test_app/body_elements/drawer.dart';
import 'package:ecomm_test_app/pages/terms_and_Conditon.dart';
import 'package:flutter/material.dart';

import 'addressinfo.dart';
import 'cart.dart';

class contactinfo extends StatefulWidget {
  @override
  _contactinfoState createState() => _contactinfoState();
}

class _contactinfoState extends State<contactinfo> {
  bool _validate = false;
  TextEditingController firstnamecontroller = new TextEditingController();
  TextEditingController lastnamecontroller = new TextEditingController();

  TextEditingController emailcontroller = new TextEditingController();
  TextEditingController phonecontroller = new TextEditingController();

  String validatePassword(String value) {
    if (!(value.length > 5) && value.isNotEmpty) {
      return "Password should contain more than 5 characters";
    }
    return null;
  }

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0.1,
//            title is been used to set the title of the appbar
        title: Text(
          "Contact info",
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
            height: 200,
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
                                builder: (context) => addressinfo(),
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
                                    controller: firstnamecontroller,
                                    keyboardType: TextInputType.text,
                                    style: TextStyle(
                                      color: Color(0xFFB3B6B7),
                                    ),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      labelText: "First Name",
                                      // errorText: "Enter Your First Name",
                                    ),
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return "Please enter First Name";
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
                                    controller: lastnamecontroller,
                                    keyboardType: TextInputType.text,
                                    style: TextStyle(
                                      color: Color(0xFFB3B6B7),
                                    ),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      labelText: "Last Name",

                                      // errorText: "Enter Your Last Name",
                                    ),
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return "Please enter Last Name";
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
                                    controller: emailcontroller,
                                    keyboardType: TextInputType.emailAddress,
                                    style: TextStyle(
                                      color: Color(0xFFB3B6B7),
                                    ),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      labelText: "E-Mail",
                                      // errorText: "Enter Your Email Address",
                                    ),
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return "Please enterYour Email Address";
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
                                    controller: emailcontroller,
                                    keyboardType: TextInputType.emailAddress,
                                    style: TextStyle(
                                      color: Color(0xFFB3B6B7),
                                    ),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      labelText: "Phone",
                                      // errorText: "Enter Your Phone Number",
                                    ),
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return "Please enterYour  Phone Number";
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
                    height: 70,
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
