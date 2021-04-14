import 'package:ecomm_test_app/pages/product_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class singleSelectedList extends StatefulWidget {
  final String PROD_NAME;
  final String PICTURE;
  final double PRICE;
  final int RATING;
  final String CARTEGORY;

//   HERE LETS CREATE A CONSTRUCTOR
  singleSelectedList({
    this.PROD_NAME,
    this.PRICE,
    this.PICTURE,
    this.CARTEGORY,
    this.RATING,
  });

  @override
  _singleSelectedListState createState() => _singleSelectedListState();
}

class _singleSelectedListState extends State<singleSelectedList> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => productDetails(
          PROD_NAME: widget.PROD_NAME,
          PRICE:  widget.PRICE,

          PICTURE:  widget.PICTURE,

          CARTEGORY:   widget.CARTEGORY,

          RATING:  widget.RATING,
        ),));



      },
        child: SizedBox(
    height: MediaQuery.of(context).size.height,
    width: 100,
    child: Card(
    color: Colors.white,
    child: Hero(
    tag: new Text("hero1"),
    child: Material(
    child: Column(children: [
    Expanded(flex: 2,
    child: Container(


    decoration: BoxDecoration(
    shape: BoxShape.rectangle,
    image: DecorationImage(
    image: AssetImage(widget.PICTURE), fit: BoxFit.fill)),
    ),
    ),

    //end of header
    Expanded(
    child:
    Column
    (
    children: [
    Container(
    height: 4,
    color: Color(0xFF03ADC1),
    ),
    Expanded(
    child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    Expanded(
      child: Text(
      widget.PROD_NAME,
      style: TextStyle(color: Colors.black,fontSize: 14),
      ),
    ), Expanded(
        child: Row(    mainAxisAlignment: MainAxisAlignment.start,

          children: [
            Expanded(
              child: RatingBar.builder(

                initialRating: 3,

                minRating: 1,

                direction: Axis.horizontal,

                allowHalfRating: true,

                itemCount: 5,
                itemSize: 14,
                itemPadding: EdgeInsets.symmetric(horizontal: 2.0),

                itemBuilder: (context, _) => Icon(

                  Icons.star,

                  color: Colors.amber,size: 1,

                ),

                onRatingUpdate: (rating) {

                  print(rating);

                },

              ),
            ),

          ],),
      ),
    ],
    ),
    ),
    Expanded(
    child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    Text(

    widget.CARTEGORY,
    style: TextStyle(color: Colors.black54,fontSize: 12),
    ),
    ],
    ),
    ),

    Expanded(
    child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    Padding(
    padding: const EdgeInsets.all(2.1),
    child: Text(
    "${ widget.PRICE}",
    style: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),
    ),
    ),
    ],
    ),
    ),
    ]),
    ),

    ],
//             let declare the image view for the gridetile


    ),
    ),
    )),
    ),
    );
}}
