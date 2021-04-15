import 'package:ecomm_test_app/single_elements/single_linear_recent.dart';
import 'package:ecomm_test_app/single_elements/single_new_arival.dart';
import 'package:flutter/material.dart';

class newArrivalList extends StatefulWidget {
  @override
  _newArrivalListState createState() => _newArrivalListState();
}

class _newArrivalListState extends State<newArrivalList> {
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
  bool isgrid = true, islist = false;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: 50,
        child: ListTile(
          leading: Text(
            "New Arrival",
            style: TextStyle(color: Colors.black45, fontSize: 24.0),
          ),
          trailing: SizedBox(
            width: 50,
            child: Row(
              children: [
                Expanded(
                    child: IconButton(
                        icon: Icon(
                          Icons.list,
                          color: islist == true
                              ? Color(0XFF898989)
                              : Color(0XFFD2D2D2),
                        ),
                        onPressed: () {
                          if (isgrid == true) {
                            setState(() {
                              isgrid = false;
                              islist = true;
                            });
                          }
                        })),
                Expanded(
                    child: IconButton(
                        icon: Icon(Icons.apps),
                        color: isgrid == true
                            ? Color(0XFF898989)
                            : Color(0XFFD2D2D2),
                        onPressed: () {
                          if (islist == true) {
                            setState(() {
                              isgrid = true;
                              islist = false;
                            });
                          }
                        })),
              ],
            ),
          ),
        ),
      ),
      //end of headerss
      Expanded(
        flex: 5,
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: isgrid == true
              ? GridView.builder(
                  itemCount: product_list.length,
                  gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (BuildContext contex, int index) {
                    return singlenewarrival(
                      PROD_NAME: product_list[index]["name"],
                      PRICE: product_list[index]["prize"],
                      PICTURE: product_list[index]["picture"],
                      CARTEGORY: product_list[index]["cartegory"],
                      RATING: product_list[index]["rating"],
                    );
                  })
              : Container(
            color: Color(0XFFEBEFF1),
                child: ListView.builder(
                    shrinkWrap: true,
                    // physics: const NeverScrollableScrollPhysics(),
                    itemCount: product_list.length,
                    itemBuilder: (context, index) {
                      //  slidanble brgins        hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh

                      return Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          child: singleLinearElement(
                            PROD_NAME: product_list[index]["name"],
                            PRICE: product_list[index]["prize"],
                            PICTURE: product_list[index]["picture"],
                            CARTEGORY: product_list[index]["cartegory"],
                            RATING: product_list[index]["rating"],
                          ),
                        ),
                      );

                      //  slidable endsjjkjjhhgggggggggggggggggggggggggggggggggggggggggg
                    }),
              ),
        ),
      )
    ]);
  }
}
