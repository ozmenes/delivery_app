import 'package:delivery_flutter_app/screens/shop/shopcard.dart';
import 'package:delivery_flutter_app/screens/widgets/searchbutton.dart';
import 'package:flutter/material.dart';

class SelectedCuisine extends StatefulWidget {
  String cuisineName;
  SelectedCuisine({this.cuisineName});
  @override
  _SelectedCuisineState createState() => _SelectedCuisineState();
}

class _SelectedCuisineState extends State<SelectedCuisine> {
  final shopName=['Kardes Pide', 'Olympia','Restaurant Lavastein'];
  final searchTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.amber,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                    color: Colors.white,
                    child: DeliverySearch()
                ),
                Text(widget.cuisineName.toString(),style: TextStyle(fontSize: 25.0),),
                ShopCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
