import 'package:flutter/material.dart';

class ShopList extends StatefulWidget {
  @override
  _ShopListState createState() => _ShopListState();
}

class _ShopListState extends State<ShopList> {
  double fDefaultPadding= 20.0;
  int selectedIndex = 0;
  List cuisinesIconList=["hot_deals.png","pizza.png","donerkebap.png","hamburger.png","sushi.png","snack.png","drink.png",];
  List cuisinesList=["All","Itallian\n Pizza","Doner\nKebap","Hamburger","Sushi","Snacks","Drinks",];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: fDefaultPadding / 4),
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: cuisinesList.length,
        itemBuilder: (context, index){
          return GestureDetector(
            onTap: (){},
            //child: ShopCard(shopImg: cuisinesIconList[index],shopName: cuisinesList[index],)
          );
        },
      ),
    );
  }
}
