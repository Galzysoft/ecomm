import 'package:flutter/material.dart';

class overview extends StatefulWidget {
  @override
  _overviewState createState() => _overviewState();
}

class _overviewState extends State<overview> {
  TextEditingController paswordcontroller = new TextEditingController();
  TextEditingController namecontroller = new TextEditingController();
  TextEditingController phonecontroller = new TextEditingController();
  TextEditingController emailcontroller = new TextEditingController();
  TextEditingController statuscontroller = new TextEditingController();
  bool password_enable = false;

  bool phone_enable = false;
  bool name_enable = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      paswordcontroller.text = "onyeka";
      phonecontroller.text = "08105124112";
      namecontroller.text = "onyeka";
      paswordcontroller.text = "onyeka";
      emailcontroller.text = "onyekaejimns@gmail.com";
      statuscontroller.text = "Active";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            SizedBox(
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 70,
                      child: TextFormField(
                        controller: namecontroller,
                        enabled: name_enable,
                        keyboardType: TextInputType.name,
                        style: TextStyle(),
                        decoration: InputDecoration(
                          labelText: "Name",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                      icon: Icon(Icons.edit),
                      color: name_enable == true
                          ? Color(0XFF000000)
                          : Color(0XFFB0B1B8),
                      onPressed: () {
                        if (name_enable) {
                          setState(() {
                            name_enable = false;
                          });
                        } else {
                          setState(() {
                            name_enable = true;
                          });
                        }
                      })
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
              child: Divider(
                color: Color(0XFF013B43),
              ),
            ),
          ],
        ),
        Column(
          children: [
            SizedBox(
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 70,
                      child: TextFormField(
                        obscureText: true,
                        controller: paswordcontroller,
                        enabled: password_enable,
                        keyboardType: TextInputType.name,
                        style: TextStyle(
                            // color: Color(0xFFB3B6B7),
                            ),
                        decoration: InputDecoration(
                          labelText: "Password",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                      icon: Icon(Icons.edit),
                      color: password_enable == true
                          ? Color(0XFF000000)
                          : Color(0XFFB0B1B8),
                      onPressed: () {
                        if (password_enable) {
                          setState(() {
                            password_enable = false;
                          });
                        } else {
                          setState(() {
                            password_enable = true;
                          });
                        }
                      })
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
              child: Divider(
                color: Color(0XFF013B43),
              ),
            ),
          ],
        ),
        Column(
          children: [
            SizedBox(
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 70,
                      child: TextFormField(
                        controller: phonecontroller,
                        enabled: phone_enable,
                        keyboardType: TextInputType.phone,
                        style: TextStyle(
                            // color: Color(0xFFB3B6B7),
                            ),
                        decoration: InputDecoration(
                          labelText: "Phone",
                          focusColor: Colors.white,
                          hoverColor: Colors.white,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                      icon: Icon(Icons.edit),
                      color: phone_enable == true
                          ? Color(0XFF000000)
                          : Color(0XFFB0B1B8),
                      onPressed: () {
                        if (phone_enable) {
                          setState(() {
                            phone_enable = false;
                          });
                        } else {
                          setState(() {
                            phone_enable = true;
                          });
                        }
                      })
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
              child: Divider(
                color: Color(0XFF013B43),
              ),
            ),
          ],
        ),
        Column(
          children: [
            SizedBox(
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 70,
                      child: TextFormField(
                        controller: emailcontroller,
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(
                            // color: Color(0xFFB3B6B7),
                            ),
                        decoration: InputDecoration(
                          labelText: "Email",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
              child: Divider(
                color: Color(0XFF013B43),
              ),
            ),
          ],
        ),
        Column(
          children: [
            SizedBox(
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 70,
                      child: TextFormField(
                        controller: statuscontroller,
                        keyboardType: TextInputType.name,
                        style: TextStyle(),
                        decoration: InputDecoration(
                          labelText: "Status",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
              child: Divider(
                color: Color(0XFF013B43),
              ),
            ),
          ],
        ),
        Column(children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Watching",
                    style: TextStyle(color: Color(0xFFB3B6B7))),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 2, 8, 3),
            child: Row(
              children: [
                Container(
                  height: 7,
                  width: 20,
                  decoration: BoxDecoration(
                      color: Color(0XFFA09E9E), shape: BoxShape.rectangle),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Special Design Watch",
                      style: TextStyle(fontSize: 18,
                          // color: Color(0xFFB3B6B7)
                      )),
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
                      color: Color(0XFFA09E9E), shape: BoxShape.rectangle),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Business Dress  Suit",
                      style: TextStyle(fontSize: 18,
                          // color: Color(0xFFB3B6B7)
                      )),
                ),
              ],
            ),
          ),
        ])
      ],
    );
  }
}
