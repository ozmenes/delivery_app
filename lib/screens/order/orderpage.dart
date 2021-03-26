import 'package:delivery_flutter_app/screens/widgets/widget.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
          color: Colors.greenAccent,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              //shopdetail
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      color: Colors.grey[300],
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Text('Map'),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                      color: Colors.grey[300],
                      //height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Divider(
                            height: 20.0,
                            color: Colors.grey,
                            thickness: 2,
                          ),
                          Row(
                            children: <Widget>[
                              Text('Shop Name: ',style: orderShopNameTextTextFieldStyle(),),
                              Text('xxx'),
                            ],
                          ),
                          SizedBox(height: 5.0,),
                          Row(
                            children: <Widget>[
                              Text('Address: ',style: orderShopAddressTextTextFieldStyle(),),
                              Text('Kassel'),
                            ],
                          ),
                          SizedBox(height: 10.0,),
                          Text('Order Detail',),
                          Text('in 30 min. your order is ready.')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //orderdetail
              Container(
                height: 100.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.blueGrey,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[
                        Divider(
                          height: 20.0,
                          color: Colors.grey,
                          thickness: 2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('First Order',style: orderShopNameTextTextFieldStyle(),),
                            Text('x.x Price'),
                          ],
                        ),
                        SizedBox(height: 10.0,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('Second Order',style: orderShopNameTextTextFieldStyle(),),
                            Text('x.x Price'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: addToOrderBottom(),
    );
  }
  Widget addToOrderBottom(){
    return GestureDetector(
      onTap: (){

        //Navigator.push(context, MaterialPageRoute(builder: (builder)=> ConfirmPage()));
      },
      child: Container(
        decoration: BoxDecoration(

        ),
        width: MediaQuery.of(context).size.width,
        height: 75,
        child: Padding(
          padding: const EdgeInsets.only(top: 0.0,bottom: 10,left: 15,right: 15),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.black
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 60,right: 60,bottom: 10,top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      "Confirm your Order",
                      style: orderMediumWhiteTitelTextStyle(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
/***
 *shopinfo where u order
 * orders list
 * buy button
 *  ***/


