import 'package:delivery_flutter_app/screens/widgets/widget.dart';
import 'package:flutter/material.dart';

class ShopTitel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0 ),
      child: Row(
        children: [
          Text("Restaurants in ",
            style: shopTitelTextStyle(),
          ),
          Text("Kassel ,Hessen",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(215, 153, 79, 1)
              )
          )
        ],
      ),
    );
  }
}
