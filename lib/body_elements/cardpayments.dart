import 'package:flutter/material.dart';

class cardpayment extends StatefulWidget {
  @override
  _cardpaymentState createState() => _cardpaymentState();
}

class _cardpaymentState extends State<cardpayment> {
  double total = 269.0;
  final _formkey = GlobalKey<FormState>();
  TextEditingController namecontroller = new TextEditingController();
  TextEditingController surnamecontroller = new TextEditingController();

  TextEditingController cardnocontroller = new TextEditingController();
  TextEditingController expdatecontroller = new TextEditingController();
  TextEditingController cvvcontroller = new TextEditingController();
  TextEditingController subtotalcontroller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0XFFEDECEC),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              elevation: 1.5,
              child: Form(
                key: _formkey,
                child: Column(children: [
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
                                          controller: namecontroller,
                                          keyboardType: TextInputType.text,
                                          style: TextStyle(
                                            color: Color(0xFFB3B6B7),
                                          ),
                                          decoration: InputDecoration(
                                            // border: InputBorder.none,
                                            labelText: " Name",
                                            // errorText: "Enter Your First Name",
                                          ),
                                          validator: (value) {
                                            if (value.isEmpty) {
                                              return "Please enter Name";
                                            } else {
                                              return null;
                                            }
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Expanded(
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: TextFormField(
                                          controller: surnamecontroller,
                                          keyboardType: TextInputType.text,
                                          style: TextStyle(
                                            color: Color(0xFFB3B6B7),
                                          ),
                                          decoration: InputDecoration(
                                            // border: InputBorder.none,
                                            labelText: " SurName",
                                            // errorText: "Enter Your First Name",
                                          ),
                                          validator: (value) {
                                            if (value.isEmpty) {
                                              return "Please enter SurName";
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
                                          controller: cardnocontroller,
                                          keyboardType: TextInputType.number,
                                          style: TextStyle(
                                            color: Color(0xFFB3B6B7),
                                          ),
                                          decoration: InputDecoration(
                                            // border: InputBorder.none,
                                            labelText: "Card Number",

                                            // errorText: "Enter Your Last Name",
                                          ),
                                          validator: (value) {
                                            if (value.isEmpty) {
                                              return "Please enter card number";
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
                                          controller: expdatecontroller,
                                          keyboardType: TextInputType.datetime,
                                          style: TextStyle(
                                            color: Color(0xFFB3B6B7),
                                          ),
                                          decoration: InputDecoration(
                                            // border: InputBorder.none,
                                            labelText: "Expire Date",
                                            // errorText: "Enter Your Email Address",
                                          ),
                                          validator: (value) {
                                            if (value.isEmpty) {
                                              return "Please enter Your expiredate";
                                            } else {
                                              return null;
                                            }
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Expanded(
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: TextFormField(
                                          controller: cvvcontroller,
                                          keyboardType: TextInputType.number,
                                          style: TextStyle(
                                            color: Color(0xFFB3B6B7),
                                          ),
                                          decoration: InputDecoration(
                                            // border: InputBorder.none,
                                            labelText: "CVV",
                                            // errorText: "Enter Your Email Address",
                                          ),
                                          validator: (value) {
                                            if (value.isEmpty) {
                                              return "Please enter Your CVV";
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
                      ],
                    ),
                  ),
                ]),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              elevation: 1.5,
              child: ListTile(
                leading: Text(
                  "Sub Total",
                  style: TextStyle(color: Colors.black54, fontSize: 14),
                ),
                trailing: Text(
                  "$total",
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
