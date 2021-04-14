import 'package:ecomm_test_app/pages/new_arrival.dart';
import 'package:ecomm_test_app/pages/profile.dart';
import "package:flutter/material.dart";

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0.1,
      child: Container(
        decoration: BoxDecoration(color: Color(0XFF013B43)),
        child: new ListView(
          children: [
            SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                child: SizedBox(
                  height: 170,
                  child: UserAccountsDrawerHeader(
                    accountName: new Text(
                      "Ejimns Onyeka",
                      style: TextStyle(color: Colors.white),
                    ),
                    accountEmail: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => profile(),
                              ));
                        },
                        child: Row(
                          children: [
                            Text(
                              "onyekaejimns@gmail.com",
                              style: TextStyle(color: Colors.white),
                            ),
                            Expanded(
                                child: SizedBox(
                              width: 50,
                            )),
                            Expanded(
                                child: Icon(Icons.arrow_drop_down,
                                    color: Colors.white))
                          ],
                        )),
                    arrowColor: Colors.lightBlueAccent,
                    decoration: BoxDecoration(
                      color: Color(0XFF013B43),
                      image: DecorationImage(
                        image: AssetImage("images/back.png"),
                        fit: BoxFit.cover,
//          making the imake transparent
                        colorFilter: new ColorFilter.mode(
                            Colors.black.withOpacity(0.4), BlendMode.dstATop),
                      ),
                    ),
                    currentAccountPicture: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => profile(),
                            ));
                      },
                      child: CircleAvatar(
                        radius: 500,
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
                  ),
                ),
              ),
            )
//       here is the body of the  drawer it begimns here
// SingleChildScrollView(
//                 child: ExpansionTile(leading: Text("onyekaejimns@gmail.com") ,
//
//                  ),

            ,
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  ExpansionTile(
                    title: new Text(
                      "Your Account",
                      style: TextStyle(fontSize: 16),
                    ),
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: InkWell(
                            onTap: () {},
                            child: SizedBox(
                                height: 16,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Text("Wish List",
                                        style: TextStyle(
                                            color: Color(0xFF292A2D))),
                                  ],
                                ))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: InkWell(
                            onTap: () {},
                            child: SizedBox(
                                height: 16,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Text("Oders",
                                        style: TextStyle(
                                            color: Color(0xFF292A2D))),
                                  ],
                                ))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: InkWell(
                            onTap: () {},
                            child: SizedBox(
                                height: 16,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Text("Recommendations",
                                        style: TextStyle(
                                            color: Color(0xFF292A2D))),
                                  ],
                                ))),
                      ),
                    ],
                  ),
                  Divider(
                    color: Color(0XFF013B43),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => newArival(),
                          ));
                    },
                    child: ListTile(
                      leading: new Text(
                        "New Arrivals",
                        style: TextStyle(fontSize: 16),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios,
                          color: Colors.black54, size: 20),
                    ),
                  ),
                  Divider(
                    color: Color(0XFF013B43),
                  ),
                  InkWell(
                    onTap: () {},
                    child: ListTile(
                      leading: new Text(
                        "Men",
                        style: TextStyle(fontSize: 16),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios,
                          color: Colors.black54, size: 20),
                    ),
                  ),
                  Divider(
                    color: Color(0XFF013B43),
                  ),
                  InkWell(
                    onTap: () {},
                    child: ListTile(
                      leading: new Text(
                        "Woman",
                        style: TextStyle(fontSize: 16),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios,
                          color: Colors.black54, size: 20),
                    ),
                  ),
                  Divider(
                    color: Color(0XFF013B43),
                  ),
                  InkWell(
                    onTap: () {},
                    child: ListTile(
                      leading: new Text(
                        "Kids",
                        style: TextStyle(fontSize: 16),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios,
                          color: Colors.black54, size: 20),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
