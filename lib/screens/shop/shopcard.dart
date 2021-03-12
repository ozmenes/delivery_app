import 'package:flutter/material.dart';

class ShopCard extends StatefulWidget {
  @override
  _ShopCardState createState() => _ShopCardState();
}

class _ShopCardState extends State<ShopCard> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: (){},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.black,
                height: 240,
                width: 400,
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 160,
                      width: 400,
                      color: Colors.blue[800],
                      child: Center(
                        child: Text('IMG'),
                      ),
                    ),
                    Spacer(),
                    Container(
                      color: Colors.yellow,
                      child: Row(
                        children: <Widget>[
                          Expanded(child: Text('Shop Name')),
                          Text('Address')
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      color: Colors.yellow,
                      child: Row(
                        children: <Widget>[
                          Expanded(child: Text('Shop Name')),

                        ],
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
