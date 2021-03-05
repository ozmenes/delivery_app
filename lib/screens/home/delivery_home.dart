import 'package:delivery_flutter_app/screens/carousel/image_carousel.dart';
import 'package:delivery_flutter_app/screens/cuisin/cuisinestitel.dart';
import 'package:delivery_flutter_app/screens/search/filter.dart';
import 'package:flutter/material.dart';

class DeliveryHome extends StatefulWidget {
  @override
  _DeliveryHomeState createState() => _DeliveryHomeState();
}

class _DeliveryHomeState extends State<DeliveryHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _deliverySearch(),
          SizedBox(height:10.0,),
          AnnouncementSlider(),
          //Announcement(width),
          CuisinesCardTitel(),
          Center(
            child: Text(
                'Cuisines List with Icon'
            ),
          ),
          Center(
            child: Text(
                'Titel'
            ),
          ),

          Center(
            child: Text(
                'Shops list'
            ),
          ),
        ],
      ),
    );
  }
  _deliverySearch(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        SizedBox(width: 8.0,),
        Container(

          width: MediaQuery.of(context).size.width/1.5 ,
          //height: MediaQuery.of(context).size.height/18,
          //margin: EdgeInsets.only(top: 0.0,bottom: 0.0),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.grey[300],
                  Colors.grey[300]
                ]
            ),

            borderRadius: BorderRadius.circular(25),
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
              hintText: 'Location..',
              hintStyle: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.grey[300],
                Colors.grey[300],
              ]
            ),
            borderRadius: BorderRadius.circular(35),
          ),
          child: IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (builder)=> DeliveryFilter()));
              /// Goto search filter
            },
            icon: Icon(Icons.timelapse,size: 30.0,),
          ),
        ),
        SizedBox(width: 8.0,),
        Container(
          child: IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (builder)=> DeliveryFilter()));
              /// Goto search filter
            },
            icon: Icon(Icons.dashboard,size: 30.0,),
          ),
        ),
        SizedBox(width: 8.0,),
      ],
    );
  }
}
