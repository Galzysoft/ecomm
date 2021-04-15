import 'package:ecomm_test_app/pages/product_detail.dart';
import 'package:flutter/material.dart';

class singleLinearElement extends StatefulWidget {
  final String PROD_NAME;
  final String PICTURE;
  final double PRICE;
  final int RATING;
  final String CARTEGORY;

//   HERE LETS CREATE A CONSTRUCTOR
  singleLinearElement({
    this.PROD_NAME,
    this.PRICE,
    this.PICTURE,
    this.CARTEGORY,
    this.RATING,
  });
  @override
  _singleLinearElementState createState() => _singleLinearElementState();
}

class _singleLinearElementState extends State<singleLinearElement> {
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
      },
      child: SizedBox(
        height: 130,
        child: Material(
            elevation: 1.5,
            child: Center(
              child: ListTile(
                  leading: SizedBox(
                    height: 100,
                    width: 100,
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                              image: AssetImage(widget.PICTURE),
                              fit: BoxFit.fill)),
                    ),
                  ),
                  title: Text(
                    widget.PROD_NAME,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  trailing: SizedBox(
                    width: 100,
                    child:Row(children: [Expanded(
                      child: IconButton(
                          icon: isfav == false
                              ? Icon(
                            Icons.favorite,
                            color: Colors.black54,
                          )
                              : Icon(
                            Icons.favorite,
                            color: Color(0XFF03ADC1),
                          ),
                          onPressed: () {
                            setState(() {
                              if (isfav == false) {
                                isfav = true;
                              } else {
                                isfav = false;
                              }
                            });
                          }),
                    ), Expanded(
                      child: IconButton(
                        icon: Icon(
                          Icons.more_vert,
                          color: Colors.black54,
                        ),
                        onPressed: () {},
                      ),
                    ),],)


                  ),
            )),
      ),
    ));
  }
}
