import 'package:delivery_flutter_app/screens/carousel/image_carousel.dart';
import 'package:delivery_flutter_app/screens/cuisin/cuisinestitel.dart';
import 'package:delivery_flutter_app/screens/cuisin/cuisineslist.dart';
import 'package:delivery_flutter_app/screens/shop/shopcard.dart';
import 'package:delivery_flutter_app/screens/shop/shoptitel.dart';
import 'package:delivery_flutter_app/screens/widgets/searchbutton.dart';
import 'package:flutter/material.dart';

class DeliveryHome extends StatefulWidget {
  @override
  _DeliveryHomeState createState() => _DeliveryHomeState();
}

class _DeliveryHomeState extends State<DeliveryHome> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    width =width;
    height=height/3.5;
    return SingleChildScrollView(
      child: Column(
        children: [
          DeliverySearch(),
          //SizedBox(height:10.0,),
          AnnouncementSlider(),
          //Announcement(width),
          CuisinesCardTitel(),
          CuisinesIconList(),
          ShopTitel(),
          ShopCard(),
          Center(
            child: Text(
                height.toString()
            ),
          ),

          Center(
            child: Text(
                width.toString()
            ),
          ),
        ],
      ),
    );
  }
}
