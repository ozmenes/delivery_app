import 'package:delivery_flutter_app/screens/wrapper.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       scaffoldBackgroundColor: Colors.white,
       primaryColor: Colors.white,
      ),
      home: Wrapper()//MyHomePage(title: 'Delivery App v1'),

    );
  }
}

