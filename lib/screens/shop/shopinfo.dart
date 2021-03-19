import 'package:flutter/material.dart';

class ShopInfoPage extends StatefulWidget {
  @override
  _ShopInfoPageState createState() => _ShopInfoPageState();
}

class _ShopInfoPageState extends State<ShopInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amberAccent,
        child: Center(
          child: Text(
            'Shop Information Page'
          ),
        ),
      ),
    );
  }
}
