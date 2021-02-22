import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  final Function toggle;
  SignInPage(this.toggle);
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Sign in Page'),
      ),
    );
  }
}
