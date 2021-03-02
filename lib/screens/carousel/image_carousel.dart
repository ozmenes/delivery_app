import 'package:carousel_pro/carousel_pro.dart';
import 'package:delivery_flutter_app/screens/carousel/announcement.dart';
import 'package:flutter/material.dart';

class AnnouncementSlider extends StatefulWidget {
  @override
  _AnnouncementSliderState createState() => _AnnouncementSliderState();
}

class _AnnouncementSliderState extends State<AnnouncementSlider> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    Widget _image_carousel = new Container(
      padding: EdgeInsets.all(10.0),
      height: 250.0,
      child: new Carousel(
        boxFit: BoxFit.fill,
        images: [
          Announcement(width),
          AssetImage('assets/images/pepsi.jpg'),
          AssetImage('assets/images/mcdonals.jpg'),
          AssetImage('assets/images/pepsi.jpg'),
        ],
        autoplay: false,
        //
        // animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 5000),
        borderRadius: true,
        dotSize: 6.0,
        indicatorBgPadding: 6.0,
      ),
    );

    return Container(
      color: Colors.white,
      child: ListView(
        shrinkWrap: true,
        children: [
          _image_carousel,
        ],
      ),
    );
  }
}
