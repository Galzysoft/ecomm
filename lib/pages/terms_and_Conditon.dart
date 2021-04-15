import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import 'file:///C:/Users/USER/AndroidStudioProjects/ecomm_test_app/lib/body_elements/drawer.dart';

import 'cart.dart';
import 'homepage.dart';

class termsandcondition extends StatefulWidget {
  @override
  _termsandconditionState createState() => _termsandconditionState();
}

class _termsandconditionState extends State<termsandcondition> {
  bool isAgree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ListTile(
        leading: SizedBox(
          width: 170,
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Checkbox(
                    value: isAgree,
                    onChanged: (value) {
                      setState(() {
                        isAgree = value;
                      });
                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "I agree",
                    style: TextStyle(color: Colors.cyan, fontSize: 14.0),
                  ),
                ),
              ),
            ],
          ),
        ),
        trailing: Visibility(
          visible: isAgree,
          child: MaterialButton(
              elevation: 0.7,
              color: Colors.cyan,
              child: Text(
                "Continue",
                style: TextStyle(color: Colors.white, fontSize: 14.0),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new homepage()));
              }),
        ),
      ),
      appBar: new AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0.1,
//            title is been used to set the title of the appbar
        title: Text(
          "Terms & Conditions",
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 160,
              child: ListTile(
                title: new Text("General Terms"),
                subtitle: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad"
                    "minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 180,
              child: ListTile(
                title: new Text("Personel Data"),
                subtitle: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad"
                    "minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 180,
              child: ListTile(
                title: new Text("Privacy Agreement"),
                subtitle: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad"
                    "minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
              ),
            ),
          ),
        ],
      ),
    );
    ListView(
      children: [],
    );
  }
}
