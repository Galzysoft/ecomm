import 'package:badges/badges.dart';
import 'package:ecomm_test_app/body_elements/drawer.dart';
import 'package:ecomm_test_app/single_elements/single_selectedList.dart';
import 'package:flutter/material.dart';

import 'cart.dart';

class selectedlists extends StatefulWidget {
  final String tabbed_name;
  final String carte_name;

   selectedlists({this.tabbed_name, this.carte_name});






  @override
  _selectedlistsState createState() => _selectedlistsState();
}

class _selectedlistsState extends State<selectedlists> {
  var product_list=[
//  this is a map for a single product

    {"name":"Black T-Shirt",
      "picture":"images/products/shoe (11).jpg",
      "prize":3.34,
      "rating":1,
      "cartegory":"shirt tino",
    },
    {"name":"Zino T-Shirt",
      "picture":"images/products/shoe (10).jpg",
      "prize":23.34,
      "rating":5,
      "cartegory":"shirt tino",
    },
    {"name":"Dark-Shirt",
      "picture":"images/products/shoe (3).jpg",
      "prize":23.34,
      "rating":6,
      "cartegory":"shirt tino",
    },
    {"name":"Galzys-Shirt",
      "picture":"images/products/shoe (5).jpg",
      "prize":23.34,
      "rating":5,
      "cartegory":"shirt tino",
    },
    {"name":"Blk T-Shirt",
      "picture":"images/products/shoe (8).jpg",
      "prize":3.34,
      "rating":1,
      "cartegory":"shirt tino",
    },
    {"name":"Zino T-Shirt",
      "picture":"images/products/shoe (10).jpg",
      "prize":23.34,
      "rating":5,
      "cartegory":"shirt tino",
    },
    {"name":"Dark-Shirt",
      "picture":"images/products/shoe (3).jpg",
      "prize":23.34,
      "rating":6,
      "cartegory":"shirt tino",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: new AppBar(
      iconTheme: IconThemeData(color: Colors.white),
      elevation: 0.1,
//            title is been used to set the title of the appbar
      title: Text(
        "Detail",
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
          child: InkWell(onTap: (){
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
      body: Column(children: [
        SizedBox(height: 30,
        child: Container(color:Color(0xFF03ADC1),
      child:Row(
        children: [
          InkWell(onTap: () {

          },
            child: Row(children:[
            SizedBox(width: 8,),
              SizedBox(
                width: 50,
                child: Text(
                  widget.  carte_name, style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white),),
              ),Icon(Icons.arrow_forward_ios,color: Colors.white),
            ],),
          ),
          InkWell(onTap: () {

          },
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                width:50,
                  child: Text(
                    widget.  tabbed_name, style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),),
                ),
              ),Icon(Icons.arrow_forward_ios,color: Colors.white),
            ],),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              Text(
                "New Season", style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.white),),
            ],),
          ),
        ],
      ),),)
      ,
        Expanded(
          child: SizedBox(height: MediaQuery.of(context).size.height,
            child: GridView.builder(
                itemCount: product_list.length,
                gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (BuildContext contex,int index){
                  return singleSelectedList(
                    PROD_NAME:  product_list[index]["name"],
                    PRICE:  product_list[index]["prize"],

                    PICTURE:  product_list[index]["picture"],

                    CARTEGORY:  product_list[index]["cartegory"],

                    RATING:  product_list[index]["rating"],
                  );
                }),
          ),
        )],),
    );
  }
}
