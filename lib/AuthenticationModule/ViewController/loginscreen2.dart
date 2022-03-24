import 'package:easyshop/AuthenticationModule/ViewController/change_password.dart';
import 'package:easyshop/AuthenticationModule/ViewController/loginscreen.dart';
import 'package:easyshop/AuthenticationModule/ViewController/profilecontroller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../view/authbuttonsecondscreen.dart';
import '../view/textformfield.dart';
import '../view/container.dart';
import 'package:easyshop/screendesign/appointment/appointmentcard.dart';
import '../view/authbutton.dart';
import '../ViewController//loginscreen3.dart';
class LoginScreen2 extends StatefulWidget {
  const LoginScreen2({Key? key}) : super(key: key);

  @override
  State<LoginScreen2> createState() => _LoginScreen2State();
}

class _LoginScreen2State extends State<LoginScreen2> {

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
          child:   Container(

            height: MediaQuery.of(context).size.height,

            width: MediaQuery.of(context).size.width,

            child: Column(

              children: [

                SizedBox(height: size.height/22,),

                Padding(

                  padding:  EdgeInsets.only(right: size.height/55,top: size.width/55),

                  child: Row(

                    mainAxisAlignment: MainAxisAlignment.end,

                    children: [

                      IconButton(onPressed: (){}, icon: Icon(Icons.close,color: Colors.grey,)),

                    ],),

                ),

                Padding(

                  padding:  EdgeInsets.symmetric(vertical: size.height/45,horizontal: size.width/20),

                  child: Containerview(

                    height: size.height/14,

                    width: size.width/1.2,

                    child: Row(

                      crossAxisAlignment: CrossAxisAlignment.stretch,

                      children: [

                        Expanded(child: Container(

                            decoration: BoxDecoration(

                              border: Border(right: BorderSide(width: 1,color: Colors.black)),

                            ),

                            child: AuthButtonScreen2(
                              onpress: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>loginPage()));},

                              childe: Text("Login",style: TextStyle(color: Colors.grey[700],fontSize: 20.0,fontWeight: FontWeight.bold),),



                            )

                        )),Expanded(child: Container(

                          decoration: BoxDecoration(   border: Border(left: BorderSide(width: 1,color: Colors.black)),





                          ),

                          child: AuthButtonScreen2(
                            onpress: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileController()));},

                            childe: Text("SignUp",style: TextStyle(color: Colors.grey[700],fontWeight:FontWeight.bold,fontSize: 20.0),),





                          ),

                        )),

                      ],

                    ),

                  ),

                ),

                Containerview(

                  height: size.height/15,

                  width: size.width/1.2,

                  child: Row(

                    children: [

                      Expanded(

                        child:Container(



                          color: Color(0xFF405595),

                          child: AuthButtonScreen2(

                              childe: Image.asset("assets/images/fbb.png",fit: BoxFit.cover,)),

                        ) ,),

                      Expanded(child:Container(

                        color: Color(0xff6aa9e7),



                        child: AuthButtonScreen2(

                            childe: Image.asset("assets/images/twtr.png",)),

                      ),),

                      Expanded(child:Container(

                        color: Color(0xff3278b5),

                        child: AuthButtonScreen2(

                            childe: Image.asset("assets/images/lk.png",)),

                      ),),



                    ],

                  ),

                ),

                SizedBox(height: size.height/38,),

                Container(

                    decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(5),

                        color: Colors.white,

                        boxShadow: [

                          BoxShadow(

                              color: Colors.grey,

                              blurRadius: 1

                          )

                        ]

                    ),

                    height: size.height/14,

                    width: size.width/1.2,

                    child: AuthButtonScreen2(

                      childe: Row(

                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [



                          Image.asset("assets/images/google.png",height: 35,),

                          SizedBox(width: size.width/15,),

                          Text("Sign in with Google",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.grey[700]),)

                        ],

                      ),

                    )),



                SizedBox(height: size.height/38,),

                Container(

                  height: size.height/14,

                  width: size.width/1.2,

                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Padding(

                        padding:  EdgeInsets.only(right: size.width/20),

                        child: Container(

                          color: Colors.grey,

                          height: size.height/400,

                          width: size.width/3.5,

                        ),

                      ),

                      Text("Or Email"),
                      Padding(

                        padding:  EdgeInsets.only(left: size.width/20),

                        child: Container(

                          color: Colors.grey,

                          height: size.height/400,

                          width: size.width/3.4,

                        ),

                      ),

                    ],

                  ),

                ),

                Container(

                  height: size.height/10,

                  width: size.width/1.2,



                  child:  TextFormFieldView(label: "Email",hint: "Email",

                    border: OutlineInputBorder(

                      borderRadius: BorderRadius.circular(size.height/100),

                    ),



                  ),
                ),

                SizedBox(height: size.height/88,),
                Container(

                  height: size.height/10,

                  width: size.width/1.2,
                  child:TextFormFieldView(label: "Password",hint: "Password",
                    isPassword: true,


                    border: OutlineInputBorder(

                      borderRadius: BorderRadius.circular(size.height/100),

                    ),



                  ),
                ),

                Container(
                  height: size.height/14,
                  width: size.width/1.2,
                  child: AuthButton(

                      onpres: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen3()));

                    },
                    color: Colors.blue,
                    name: "LogIn",
                    textcolor: Colors.white,
                    fontsize: 25.0,
                    radius: 10.0,
                    splashcolor: Colors.grey,
                  ),
                ),
                Container(

                  height: size.height/14,
                  width: size.width/1.2,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>    CardDesign()));
                      },child: Text("Remember Me",style: TextStyle(color: Colors.grey),)),
                      TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>    ChangePasswordViewController()));
                    },child: Text("Forgot Password?",style: TextStyle(color: Colors.grey))),


                    ],
                  ),
                )
              ],

            ),

          )



      ),



    );
  }


}
