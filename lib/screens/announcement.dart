import 'package:flutter/material.dart';

class Announcement extends StatelessWidget {
  double width;
  Announcement(this.width);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Container(
          height: 160.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.orangeAccent[100],
            //color: Color.fromRGBO(255, 248, 230, 1),
          ),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: width / 20),
                height: 150.0,
                width: width / 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "30-minute\ndelivery",
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(215, 153, 79, 1)),
                    ),
                    SizedBox(
                      height: width / 30,
                    ),
                    Text(
                      "Enjoy your food in just 30\nminutes. Free Forever",
                      style: TextStyle(color: Colors.black45),
                    ),
                  ],
                ),
              ),

              //here comes the image
              Container(
                height: 150.0,
                width: width / 2.5,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image:
                        AssetImage("assets/images/pizzagirl.png"))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
