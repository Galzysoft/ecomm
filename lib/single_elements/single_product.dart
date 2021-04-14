import 'package:ecomm_test_app/pages/select_list.dart';
import 'package:flutter/material.dart';

class single_product extends StatefulWidget {
//   let declare our constants values
  final String CARTEGORY;
  final String NAME;
  final String PICTURE;
  
//   here lets create a constructor clasdsd
  single_product({
    this.NAME,
    this.PICTURE,
    this.CARTEGORY,

  });
  @override
  _single_productState createState() => _single_productState();
}

class _single_productState extends State<single_product> {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        
         Navigator.push(context, MaterialPageRoute(builder: (context) => selectedlists(tabbed_name:widget.NAME,carte_name: widget.CARTEGORY,),));

      },
      child: Card(

          child:   Row(
              children: [
                Expanded(child: Center(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(widget.NAME),
                ))),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 10,
                      height: 70,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                              image: AssetImage(widget.PICTURE),
                              fit: BoxFit.fill)),
                    ),
                  ),
                ),
              ],
            ),



          ),
    );
  }


}
