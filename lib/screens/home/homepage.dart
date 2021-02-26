import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: const Icon(
          Icons.delivery_dining,color: Colors.white,
        ),
        onPressed: (){},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      body: SingleChildScrollView(
        child: Container(
          child: Column(

            children: <Widget> [
              SizedBox(height: 150.0,),
              Center(
                child: Text(
                    '1Announcement'
                ),
              ),
              Center(
                child: Text(
                    'Cuisines List with Icon'
                ),
              ),
              Center(
                child: Text(
                    'Titel'
                ),
              ),
              Center(
                child: Text(
                    'Shops list'
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
