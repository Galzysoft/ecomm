import 'package:ecomm_test_app/pages/product_detail.dart';
import 'package:flutter/material.dart';

class singlenewarrival extends StatefulWidget {
  final String PROD_NAME;
  final String PICTURE;
  final double PRICE;
  final int RATING;
  final String CARTEGORY;

//   HERE LETS CREATE A CONSTRUCTOR
  singlenewarrival({
    this.PROD_NAME,
    this.PRICE,
    this.PICTURE,
    this.CARTEGORY,
    this.RATING,
  });

  @override
  _singlenewarrivalState createState() => _singlenewarrivalState();
}

class _singlenewarrivalState extends State<singlenewarrival> {
  bool isfav = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => productDetails(
                PROD_NAME: widget.PROD_NAME,
                PRICE: widget.PRICE,
                PICTURE: widget.PICTURE,
                CARTEGORY: widget.CARTEGORY,
                RATING: widget.RATING,
              ),
            ));
      }
//         Navigator.of(context).push(new  MaterialPageRoute(
//         builder: (context)=> new product_details(
// //          here we pass values along to the other csreen via constructors
//           PRODUCT_DETAIL_NAME: PROD_NAME,
//           PRODUCT_DETAIL_OLDPRICE: RATING,
//           PRODUCT_DETAIL_PICTURE: PICTURE,
//           PRODUCT_DETAIL_PRICE: PRICE,
//         ))),
      ,
      child: Card(
          color: Colors.white,
          child: Hero(
            tag: new Text("hero1"),
            child: Material(
              child: GridTile(
//             let declare the image view for the gridetile
                child: Container(
                  width: 100,
                  height: 170,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage(widget.PICTURE), fit: BoxFit.fill)),
                ),
//            let decleare the footer content of the grid tile

                footer: Container(
                  color: Colors.black45,
                  height: 54.0,
                  child: Center(
                    child: ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          widget.PROD_NAME,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                      trailing: SizedBox(
                        width: 70,
                        child: Row(
                          children: [
                            Expanded(
                                child: IconButton(
                                    icon: isfav == false
                                        ? Icon(
                                            Icons.favorite,
                                            color: Colors.black54,
                                          )
                                        : Icon(
                                            Icons.favorite,
                                            color: Colors.white70,
                                          ),
                                    onPressed: () {
                                      setState(() {
                                        if (isfav == false) {
                                          isfav = true;
                                        } else {
                                          isfav = false;
                                        }
                                      });
                                    })),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 1,
                                        width: 3,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.rectangle),
                                      ),
                                    ),
                                    Expanded(
                                        child: SizedBox(
                                      height: 20,
                                    )),
                                    Expanded(
                                      child: Container(
                                        height: 1,
                                        width: 3,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.rectangle),
                                      ),
                                    ),
                                    Expanded(
                                        child: SizedBox(
                                      height: 20,
                                    )),
                                    Expanded(
                                      child: Container(
                                        height: 1,
                                        width: 3,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.rectangle),
                                      ),
                                    ),
                                    Expanded(
                                        child: SizedBox(
                                      height: 20,
                                    )),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
