import 'package:flutter/material.dart';

class singlecart extends StatefulWidget {
  final String PROD_NAME;
  final String PICTURE;
  final double PRICE;
  final int RATING;
  final String CARTEGORY;

//   HERE LETS CREATE A CONSTRUCTOR
  singlecart({
    this.PROD_NAME,
    this.PRICE,
    this.PICTURE,
    this.CARTEGORY,
    this.RATING,
  });

  @override
  _singlecartState createState() => _singlecartState();
}

class _singlecartState extends State<singlecart> {
  int no = 1;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Card(
        elevation: 1.5,
        child: ListTile(
          leading: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  width: 100,
                  height: 170,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: AssetImage(widget.PICTURE), fit: BoxFit.fill)),
                ),
              ),
            ],
          ),
          title: ListTile(
            title: Text(
              widget.PROD_NAME,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              widget.CARTEGORY,
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
            ),
          ),
          subtitle: ListTile(
            title: Row(
              children: [
                IconButton(
                    icon: Icon(Icons.keyboard_arrow_up_outlined),
                    onPressed: () {
                      if (no >= 0) {
                        setState(() {
                          no++;
                        });
                      }
                    }),
                Text(
                  "$no",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
                IconButton(
                    icon: Icon(Icons.keyboard_arrow_down_outlined),
                    onPressed: () {
                      if (no != 0) {
                        setState(() {
                          no--;
                        });
                      }
                    }),
              ],
            ),
            subtitle: Text(
              " \$ ${widget.PRICE}",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
