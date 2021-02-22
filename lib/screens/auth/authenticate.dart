import 'package:delivery_flutter_app/screens/auth/register.dart';
import 'package:delivery_flutter_app/screens/auth/signin.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showSignIn = false;
  void toggleView(){
    setState(() {
      showSignIn = !showSignIn;
    });
  }
  @override
  Widget build(BuildContext context) {
    if(showSignIn){
      return SignInPage(toggleView);
    }else{
      return RegisterPage(toggleView);
    }
  }
}
