import 'package:flutter/material.dart';

import '../check_button.dart';

//choose your sauce
class SauceItemExpansionTiles extends StatefulWidget {
  @override
  _SauceItemExpansionTilesState createState() => _SauceItemExpansionTilesState();
}

class _SauceItemExpansionTilesState extends State<SauceItemExpansionTiles> {
  bool isItemExpanded = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ExpansionTile(
        //leading: Icon(Icons.perm_device_information),

        title: Text('Add Toppings',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500),),
        trailing: isItemExpanded ? Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(35)
          ),
          child: Icon(Icons.keyboard_arrow_down,color: Colors.black,size: 30,),)
            : Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(35)
          ),
          child: Icon(Icons.keyboard_arrow_up,color: Colors.black,size: 30,),),
        children: [
          CheckButton(),
        ],
        onExpansionChanged: (bool expanding) => setState(() => this.isItemExpanded = expanding),
      ),

    );
  }
}

