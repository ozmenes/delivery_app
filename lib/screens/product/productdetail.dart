import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import 'expansions/size_item.dart';
import 'expansions/souce_item.dart';


class ProductDetailPage extends StatefulWidget {
  ProductDetailPage({this.productName});
  String productName;
  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  bool isfavorited = false;
  int minOrder = 1;
  //Order _order = new Order() ;
  double orderCartPrice = 6.90;
  int orderAdded = 0;
  bool cartAdded = false;
  String itemName = 'Classic Italien Pizza';
  int itemPrice= 0;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SlidingUpPanel(
        maxHeight: height,
        minHeight: height / 1.9,
        body: Container(
          height: height / 2,
          width: width,
          alignment: Alignment.topCenter,
          child: Stack(
            children: [
              Image(
                image: AssetImage("assets/images/my_pizza.jpg"),
                fit: BoxFit.cover,
                height: height / 2,
                width: width,
              ),
              Positioned(
                  top: 40.0,
                  left: 15.0,
                  child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                        size: 35.0,
                      ),
                      onPressed: () => Navigator.of(context).pop(true))
              ),
              Positioned(
                  top: 40.0,
                  right: 15.0,
                  child: IconButton(
                      icon: Icon(
                        Icons.  favorite,
                        color: Colors.red,
                        size: 35.0,
                      ),
                      onPressed: () => Navigator.of(context).pop(true))
              ),
            ],
          ),
        ),
        borderRadius: BorderRadius.only(topRight: Radius.circular(35.0),topLeft: Radius.circular(35.0)),
        color: Colors.grey[100],
        panel: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //item titel
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "$itemName",
                      style: TextStyle(
                          fontSize: 26.0, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 10.0),
                          child: IconButton(
                            icon: Icon(
                              Icons.info,
                              color: Colors.amber,
                              size: 30.0,
                            ),
                            onPressed: (){
                              setState(() {
                                Navigator.push(context, MaterialPageRoute(builder: (builder)=>ProductDetailPage()));
                              });
                            },
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              //item desc
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      //height: height / 1.2,
                      width: width/1.2,
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
                            " Cras laoreet sapien vitae justo vehicula mollis eu et ligula. "
                            "Nulla porta lacinia nisl eu semper. ",
                        style: TextStyle(
                            fontSize: 14.0, color: Colors.black54,fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(  height: 0.0,),
              // choosing part
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0,),
                child: Column(
                  children: [
                    Container(
                        color: Colors.grey[100],
                        child: SizeItemExpansionTiles()
                    ),
                    Divider(
                      color: Colors.white,
                      height: 10.0,
                      thickness: 5.0,
                    ),
                    Container(
                        color: Colors.grey[100],
                        child: SauceItemExpansionTiles()
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.0,),
              Divider(thickness: 2, color: Colors.white,),
              //Special Instructions
              Container(
                color: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Special Instructions",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              // checkbox
              // add a note here**
              Container(
                //color: Colors.grey[300],
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  child: Column(
                    children: [
                      TextFormField(
                        textInputAction: TextInputAction.newline,
                        keyboardType: TextInputType.multiline,
                        minLines: 2,
                        maxLines: 5,
                        decoration: InputDecoration(
                          hintText: "Add a note (extra sauce, etc.)",
                          hintMaxLines: 5,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,

                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              // add more order
              Container(
                //color: Colors.grey[300],
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.grey[300]
                        ),
                        child: IconButton(
                          icon: Icon(Icons.remove),
                          iconSize: 35.0,
                          onPressed: (){
                            setState(() {
                              if(minOrder<= 1){

                              }else{
                                setState(() {
                                  minOrder-=1;
                                  orderCartPrice -= 4.99;
                                });

                              }
                            });
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10.0),
                        padding: const EdgeInsets.only(left:20.0,right: 20.0),
                        child: Text(
                          '$minOrder',
                          style: TextStyle(
                              fontSize: 22.0, color: Colors.black,fontWeight: FontWeight.w600),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.grey[400]
                        ),
                        child: IconButton(
                          icon: Icon(Icons.add),
                          iconSize: 35.0,
                          onPressed: (){
                            setState(() {
                              minOrder+=1;
                              orderCartPrice +=4.99;
                            });
                          },
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
              Divider(color: Colors.grey[300],
                thickness: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
