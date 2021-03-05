import 'package:flutter/material.dart';

class CuisinesIconList extends StatefulWidget {
  @override
  _CuisinesIconListState createState() => _CuisinesIconListState();
}

class _CuisinesIconListState extends State<CuisinesIconList> {
  // by default firt item will be selected
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
          scrollDirection: Axis.horizontal,
          itemCount: cuisinesList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){
                setState(() {
                  selectedIndex = index;
                  print(selectedIndex);
                });
              },
              child: Container(
                alignment: Alignment.center,
                width: 85.0,
                padding: EdgeInsets.symmetric(horizontal: 5.0,vertical: 5.0),
                margin: EdgeInsets.only(
                    left: fDefaultPadding/2,
                    right: index == cuisinesList.length - 1 ? fDefaultPadding : 0
                ),
                decoration: BoxDecoration(
                  color: index == selectedIndex ? Colors.orangeAccent[100]: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 55,
                      child: Image(
                        image: AssetImage('assets/images/cuisineslisticon/${cuisinesIconList[index]}'),
                      ),
                    ),
                    SizedBox(height: 5.0,),
                    Container(
                      child: Text(cuisinesList[index],
                        style: TextStyle(
                            color: index == selectedIndex ? Colors.black: Colors.black,fontSize: 13,fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}

