import 'package:delivery_flutter_app/screens/shop/shopdetail.dart';
import 'package:flutter/material.dart';

class ShopCard extends StatefulWidget {
  // String shopImg;
  // String shopName;
  // ShopCard(this.shopImg,this.shopName);
  @override
  _ShopCardState createState() => _ShopCardState();
}

class _ShopCardState extends State<ShopCard> {
  //ShopCard shopCard;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        setState(() {
          Navigator.push(context, MaterialPageRoute(builder: (builder)=>ShopDetailPage()));
        });
      },
      child: Container(
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(10),
        // ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0,vertical: 8.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.zero,
                child: Container(
                  height: 240,
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 160,
                        width: 400,
                        child: Image.asset("assets/images/pepsi.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.only(left: 15.0, right: 10.0),
                        alignment: Alignment.centerLeft,
                        child:Text(
                          'My Pizza Shop',
                          style: TextStyle(color: Colors.black87,fontSize: 24.0,fontWeight: FontWeight.bold,),
                        ),
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.only(left: 15.0, right: 10.0),
                        child: Row(
                          children: [
                            Icon(Icons.pin_drop,size: 18,color: Colors.grey[700],),
                            Text('Am Stern',style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold),),
                            SizedBox(width: 5.0,),
                            Icon(Icons.near_me,size: 18,color: Colors.grey[700],),
                            Text('800 m',style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
