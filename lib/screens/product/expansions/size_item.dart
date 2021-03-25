import 'package:flutter/material.dart';

import '../sized_item_radio_button.dart';

//choose your size
class SizeItemExpansionTiles extends StatefulWidget {
  @override
  _SizeItemExpansionTilesState createState() => _SizeItemExpansionTilesState();
}

class _SizeItemExpansionTilesState extends State<SizeItemExpansionTiles> {
  bool isSizeExpanded = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ExpansionTile(
        //leading: Icon(Icons.perm_device_information),
        title: Text('Choose size',style: TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.w500)),
        trailing: isSizeExpanded ? Container(
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
          SizeItemRadioButton(),
        ],
      ),
    );
  }
}