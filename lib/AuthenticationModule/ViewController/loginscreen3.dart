import 'package:easyshop/AuthenticationModule/view/authbutton.dart';
import 'package:easyshop/AuthenticationModule/view/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

class LoginScreen3 extends StatefulWidget {
  const LoginScreen3({Key? key}) : super(key: key);

  @override
  State<LoginScreen3> createState() => _LoginScreen3State();
}

class _LoginScreen3State extends State<LoginScreen3> {

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(

        body:Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFb61e73),
                Color(0xffc81a66),


              ]
            )
          ),
          child: Center(
            child: SingleChildScrollView(

              child: Center(
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: size.width/20),
                  child: Column(

                    children: [
                      Text("InstaGram",style: TextStyle(fontSize: 30,color: Colors.white),),
                      SizedBox(height: size.height/35),
                      TextFormFieldView(label: "Email", hint: "Email",

                        border: OutlineInputBorder(

                          borderRadius: BorderRadius.circular(size.height/100),

                        ),


                      ),
                      SizedBox(height: size.height/35,),
                      TextFormFieldView(label: "Password", hint: "Password",
                        isPassword: true,

                        border: OutlineInputBorder(

                          borderRadius: BorderRadius.circular(size.height/100),

                        ),


                      ),
                      SizedBox(height: size.height/35,),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black38,width: 1)
                        ),
                        height: size.height/14,
                        width: size.width/1.0,
                        child: AuthButton(

                          name: "LogIn",
                          textcolor: Colors.black38,
                          fontsize: 25.0,
                          radius: 10.0,
                          splashcolor: Colors.grey,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text.rich(TextSpan(
                            text: "Forgot Your Login Detail?",
                            children: [
                              TextSpan(text: "  Sign up",style: TextStyle(fontSize:20,color: Colors.purpleAccent))
                            ]
                        ),

                        ),
                      ),

                       SizedBox(height: size.height/20,),
                       Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Padding(

                            padding:  EdgeInsets.only(right: size.width/20),

                            child: Container(

                              color: Colors.black12,

                              height: size.height/400,

                              width: size.width/3.5,

                            ),

                          ),

                          Text("OR",style: TextStyle(fontSize: 20,color: Colors.white54)),
                          Padding(

                            padding:  EdgeInsets.only(left: size.width/20),

                            child: Container(

                              color: Colors.black12,

                              height: size.height/400,

                              width: size.width/3.4,

                            ),

                          ),

                        ],

                      ),

SizedBox(height:size.height/20,),
Text("Login With Facebook",style: TextStyle(fontSize: 20,color: Colors.white70),),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ) ,
      ),
    );
  }
}
