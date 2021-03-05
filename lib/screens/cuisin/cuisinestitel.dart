import 'package:delivery_flutter_app/screens/widgets/widget.dart';
import 'package:flutter/material.dart';

class CuisinesCardTitel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
      child: Container(
        alignment: Alignment.centerLeft,
        child: Text("Explore cuisines",
          style: cuisinTitelTextStyle(),
        ),
      ),
    );
  }
}
