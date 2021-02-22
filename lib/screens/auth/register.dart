import 'package:delivery_flutter_app/screens/widgets/widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final Function toggle;
  RegisterPage(this.toggle);
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final _formKey = GlobalKey<FormState>();
  String appBarTitle="Register";
  bool isLoading = false;

  TextEditingController usernameText = new TextEditingController();
  TextEditingController emailText = new TextEditingController();
  TextEditingController passwordText = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: appBarMain(context,appBarTitle),
      body: isLoading ? Container(
        child: Center(
          child: CircularProgressIndicator(
          ),
        ),
      ) : SingleChildScrollView(
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
                      TextFormField(
                        validator: (val) => val.length <4 ? 'Enter valid a username 4+ chars long ' : null,
                        controller: usernameText,
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                        //decoration: textFieldInputDecoration("Username"),
                      ),
                      SizedBox(height: 12.0,),
                      TextFormField(
                        validator: (val) => val.isEmpty ? 'Enter a valid Email' : null,
                        controller: emailText,
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                        //decoration: textFieldInputDecoration("Email Address"),
                      ),
                      SizedBox(height: 12.0,),
                      TextFormField(
                        validator: (val) => val.length <4 ? 'Enter a valid Password 4+ chars long ' : null,
                        controller: passwordText,
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                        //decoration: textFieldInputDecoration('Password'),
                      ),
                      SizedBox(height: 24.0,),
                      GestureDetector(
                        //onTap: () => registerMe(),
                        onTap: (){},
                        child: Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.symmetric(vertical: 20.0),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.black,
                                    Colors.black,
                                  ]
                              ),
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child: Text("Register",
                            style: registerTextFieldStyle(),
                          ),
                        ),
                      ),
                      SizedBox(height: 18.0,),
                      Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(vertical: 20.0),
                        
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black,width: 2),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: Text("Register with ",style: TextStyle(color: Colors.black,fontSize: 17.0),),
                      ),
                      SizedBox(height: 18.0,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already have account ?',
                              style: alreadyHaveAccTextFieldStyle(),
                          ),

                          GestureDetector(
                            onTap: (){
                              widget.toggle();
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 8.0),
                              child: Text("Sign In now",
                                style: signInNowTextFieldStyle(),
                              ),
                            ),
                          ),
                        ],
                      ),
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
