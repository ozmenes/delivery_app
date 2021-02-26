import 'package:delivery_flutter_app/screens/home/delivery_home.dart';
import 'package:delivery_flutter_app/screens/search/filter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final  _formKey= GlobalKey<FormState>();
  final searchTextController = TextEditingController();
  bool delivery= true;
  String pickUpORDelivery='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _topAppBar(),
      body: Container(
        /// if delivery == true return DeliveryHome()
        /// else
        /// return PickUpHome()
        child: DeliveryHome(),
      ),
    );
  }
  _searchForPickUp(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        SizedBox(width: 8.0,),
        Container(
          width: MediaQuery.of(context).size.width/1.05 ,
          //height: MediaQuery.of(context).size.height/18,
          //margin: EdgeInsets.only(top: 0.0,bottom: 0.0),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Colors.white,
                ]
            ),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
                color: Colors.black
            ),
          ),
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide.none
              ),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide.none
              ),
              prefixIcon: Icon(Icons.pin_drop,color: Colors.black,size: 22.0,),
              hintText: 'Search for a restaurant or dish',
              hintStyle: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
        ),
        SizedBox(width: 8.0,),
      ],
    );
  }
  _topAppBar(){
    return PreferredSize(
      preferredSize: Size.fromHeight(60),
      child: SafeArea(
        child: Container(
          //padding: EdgeInsets.only(bottom: 10.0),
          alignment: Alignment.bottomCenter,
          color: Colors.white,
          child: Column(
            children: [
              //PickUpAndDelivery
              Container(
                //padding: EdgeInsets.symmetric(horizontal: 5.0,vertical: 15.0),
                child: Row(
                  children: [
                    Spacer(),
                    Text('Pickup',style: TextStyle(color:Colors.grey[500],fontWeight: FontWeight.w600),),
                    SizedBox(width: 5.0,),
                    Icon(Icons.shopping_bag_outlined,color: Colors.grey[500],size: 30,),
                    Spacer(),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Switch(
                            activeColor: Colors.black,
                            value: delivery,
                            onChanged: (value) {
                              print("VALUE : $value");
                              setState(() {
                                delivery = value;
                                if(value){
                                  pickUpORDelivery='delivery';
                                  print("pickUpORDelivery : $pickUpORDelivery");
                                }else{
                                  pickUpORDelivery='pickup';
                                  print("pickUpORDelivery : $pickUpORDelivery");
                                }
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.delivery_dining,color: Colors.black,size: 35,),
                    SizedBox(width: 5.0,),
                    Text('Delivery',style: TextStyle(fontWeight: FontWeight.w600),),
                    Spacer(),
                  ],
                ),
              ),
              //Searchbar
            ],
          ),
        ),
      ),
    );
  }
}
