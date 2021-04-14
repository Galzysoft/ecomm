import 'package:ecomm_test_app/pages/select_list.dart';
import 'package:ecomm_test_app/single_elements/single_product.dart';
import 'package:flutter/material.dart';

class menscollection extends StatefulWidget {
  final String CARTEGORY;
  menscollection({this.CARTEGORY});
  @override
  _menscollectionState createState() => _menscollectionState();
}

class _menscollectionState extends State<menscollection> {
  var product_list=[
//  this is a map for a single product
  {"name":"SHOES",
  "picture":"images/products/shoe (20).jpg",
  },
    {"name":"JEANS",
      "picture":"images/products/shoe (5).jpg",
    },
    {"name":"SUIT",
      "picture":"images/products/shoe (11).jpg",
    },
    {"name":"JEANS",
      "picture":"images/products/gown (2).jpg",
    },
    {"name":"JEANS",
      "picture":"images/products/shoe (9).jpg",
    },
    {"name":"SUIT",
      "picture":"images/products/gown (2).jpg",
    },

  ];


  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      shrinkWrap: true,
      physics:const NeverScrollableScrollPhysics() ,
        itemCount: product_list.length,
        itemBuilder: (context,index){
          return single_product(
            NAME: product_list[index]["name"],
            PICTURE: product_list[index]["picture"],CARTEGORY: widget.CARTEGORY,

          );
        });
  }
}
