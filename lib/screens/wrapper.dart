import 'package:delivery_flutter_app/screens/home/homepage.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int activeTab = 0;
  bool pickUp= false;
  String pickUpORDelivery='';
 double value =  2.8032739273;
  //String formattedValue = value.toStringAsPrecision(3);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: SafeArea(
        child: IndexedStack(
          index: activeTab,
          children: <Widget>[
            HomePage(),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text(
                      value.toString()
                  ),
                  Center(

                    child: Text(
                        value.toStringAsFixed(5)
                    ),
                  ),
                  Center(
                    child: Text(
                        value.toStringAsPrecision(3)
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Text(
                  value.toString()
              ),
            ),
            Center(
              child: Text(
                  'Chat'
              ),
            ),
            Center(
              child: Text(
                  'Settings'
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: newBottomNaviBar(),
    );
  }
  Widget newBottomNaviBar(){
    List activeTabs = [
      LineIcons.home,
      Icons.location_on_outlined,
      LineIcons.shopping_cart,
      LineIcons.wechat,
      Icons.menu
    ];
    return Padding(
      padding: const EdgeInsets.only(top: 0.0,bottom: 0,left: 0,right: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(activeTabs.length, (index){
          return buildNavBarItem(activeTabs[index], index);
        }),
      ),
    );
  }
  Widget buildNavBarItem(IconData icon,int index){
    return GestureDetector(
      onTap: (){
        setState(() {
          activeTab = index;
        });
      },
      child: Container(
        height: 50.0,
        width: MediaQuery.of(context).size.width/5,
        decoration: index == activeTab ? BoxDecoration(
            border: Border(
              //left: BorderSide(width: 5,color: Colors.black),
              //right: BorderSide(width: 5,color: Colors.black),
                bottom: BorderSide(width: 4,color: Colors.black)
            ),
            gradient: LinearGradient(
                colors: [
                  Colors.white.withOpacity(0.1),
                  Colors.white.withOpacity(0.015),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter
            ),
            color: index ==activeTab ? Colors.black : Colors.yellow
        ) : BoxDecoration(),
        child:  Icon(icon,size: 29.0,color: index ==activeTab ? Colors.black : Colors.black,),
      ),
    );
  }
  Widget getBottomBar(){
    List activeTabs = [
      LineIcons.home,
      Icons.location_on_outlined,
      LineIcons.shopping_cart,
      LineIcons.user,
      Icons.menu
    ];
    return Container(
      decoration: BoxDecoration(
        //color: Color(0xFFFFFFFF)
      ),
      width: MediaQuery.of(context).size.width,
      height: 45,
      child: Padding(
        padding: const EdgeInsets.only(top: 0.0,bottom: 0,left: 15,right: 15),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10,top: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(activeTabs.length, (index){
                return IconButton(icon: Icon(activeTabs[index],size: 29,color: Colors.black,), onPressed: (){
                  setState(() {
                    activeTab = index;
                  });
                });
              }),
            ),
          ),
        ),
      ),
    );
  }
}