import 'package:delivery_flutter_app/screens/home/homepage.dart';
import 'package:delivery_flutter_app/screens/widgets/widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  final Function toggle;
  SignInPage(this.toggle);

  @override
  _SignInPagePageState createState() => _SignInPagePageState();
}

class _SignInPagePageState extends State<SignInPage> {
  String appBarTitle="Sign In";
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  TextEditingController emailTextEditingController = new TextEditingController();
  TextEditingController passwordTextEditingController = new TextEditingController();
  bool isLoading =false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      //appBar: appBarMain(context,appBarTitle),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height-50,
          padding: EdgeInsets.all(12.00),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 20.0,),
                      Spacer(),
                      Container(
                        height: MediaQuery.of(context).size.height / 5,
                        width: MediaQuery.of(context).size.width / 1.2,
                        //color: Colors.black,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(
                              colors: [
                                Colors.black,
                                Colors.black,
                              ]
                          ),
                        ),
                      ),
                      //Spacer(),
                      TextFormField(
                        validator: (val) => val.isEmpty ? 'Enter a valid Email' : null,
                        controller: emailTextEditingController,
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                        // decoration: textFieldInputDecoration("Username or Phone Nummer"),
                      ),
                      SizedBox(height: 12.0,),
                      TextFormField(
                        validator: (val) => val.length <6 ? 'Enter a valid Password 6+ chars long ' : null,
                        controller: passwordTextEditingController,
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                        //decoration: textFieldInputDecoration('Password'),
                      ),
                      SizedBox(height: 12.0,),
                      Container(
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
                        child: Text("Forget Password ?",
                          //style: simpleTextFieldStyle(),
                        ),
                      ),
                      SizedBox(height: 14.0,),
                      GestureDetector(
                        //onTap: ()=>signIn(),
                        onTap: (){},
                        child: Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.symmetric(vertical: 16.0),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.black,
                                    Colors.black,
                                    // Color(Colors.grey),
                                    //const Color(0xff007EF4),
                                    //const Color(0xff2A75BC)
                                  ]
                              ),
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child: Text("Sign In",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.0
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 18.0,),

                      Row(
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){
                              final snackBar = SnackBar(content: Text('Coming Soon...'));
                              _scaffoldKey.currentState.showSnackBar(snackBar);
                              //Scaffold.of(context).showSnackBar(SnackBar(content: Text('Coming Soon...')));
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: MediaQuery.of(context).size.height/15,
                              width: MediaQuery.of(context).size.width/2.5,
                              padding: EdgeInsets.symmetric(vertical: 5.0),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black,width: 2),
                                  //color: Colors.white,
                                  borderRadius: BorderRadius.circular(30)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [

                                  // Image(
                                  //   height: 28,
                                  //   image: AssetImage('assets/images/google_icon.png'),
                                  // ),
                                  SizedBox(width: 5.0,),
                                  Text("G",style: TextStyle(fontSize: 24,color: Colors.blue),),
                                  Text("o",style: TextStyle(fontSize: 24,color: Colors.red),),
                                  Text("o",style: TextStyle(fontSize: 24,color: Colors.yellow),),
                                  Text("g",style: TextStyle(fontSize: 24,color: Colors.blue),),
                                  Text("l",style: TextStyle(fontSize: 24,color: Colors.green),),
                                  Text("e",style: TextStyle(fontSize: 24,color: Colors.red),),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 5.0,),
                          GestureDetector(
                            onTap: (){
                              final snackBar = SnackBar(content: Text('Coming Soon...'));
                              _scaffoldKey.currentState.showSnackBar(snackBar);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: MediaQuery.of(context).size.height/15,
                              width: MediaQuery.of(context).size.width/2.5,
                              padding: EdgeInsets.symmetric(vertical: 5.0),
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(30)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // Image(
                                  //   height: 28,
                                  //   Image: AssetImage('assets/images/apple_aa.png'),
                                  // ),
                                  SizedBox(width: 5.0,),
                                  Text("Apple",style: TextStyle(fontSize: 24,color: Colors.white),),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 18.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Don\'t have account ?',
                            //  style: simpleTextFieldStyle(),
                          ),
                          //SizedBox(width: 5.0,),
                          GestureDetector(
                            onTap: (){
                              widget.toggle();
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 8.0),
                              child: Text("Register now",
                                //style: underlineTextFieldStyle(),)
                              ),
                            ),

                          ),
                        ],
                      ),
                      SizedBox(height: 28.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (builder)=>HomePage()));
                            },
                            child: Container(
                                padding: EdgeInsets.symmetric(vertical: 8.0),
                                child: Text("Continue with as a Guest",
                                  style: underlineTextFieldStyle(),)
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 36.0,)
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
