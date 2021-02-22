import 'package:delivery_flutter_app/screens/auth/authenticate.dart';
import 'package:delivery_flutter_app/screens/home/homepage.dart';
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
        primarySwatch: Colors.blue,
      ),
      home: Authenticate()//MyHomePage(title: 'Delivery App v1'),

    );
  }
}

