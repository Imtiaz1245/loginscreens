import 'package:flutter/material.dart';
import '../view/textformfield.dart';
import '../view/authbutton.dart';
class loginPage extends StatefulWidget {
  const loginPage({Key? key} ) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 90,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 340,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,

                    )
                  ],
                  borderRadius: BorderRadius.circular(10),

                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 5,),
                      Text("Welcome to EasyShop",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text("Sign in to continue"),
                      SizedBox(height: 30,),

                      TextFormFieldView(hint: "Email", label: "Email",),
                      SizedBox(height: 20,),
                      TextFormFieldView(hint: "Password", label: "Password",
                        isPassword: true,),
                      SizedBox(height: 7,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Forgot Password?"),

                        ],
                      ),
                      SizedBox(height: 7,),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue
                        ),
                        height: 45,
                         child: AuthButton(
                           onpres: (){},
                            color: Colors.blue,
                            textcolor: Colors.white,
                            name: "LogIn",
                           fontsize: 25.0,
                           radius: 10.0,
                           splashcolor: Colors.blueAccent,
                          ),
                      )
                    ],
                  ),
                ),),
            ),
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                children: [
                  button("Sign in with Facebook", "facebook.png",),
                  SizedBox(height: 20,),
                  button("Sign in with Google", "google.png"),
                  SizedBox(height: 70,),
                  Text.rich(TextSpan(
                      text: "Don't  have an Account?",
                      children: [
                        TextSpan(text: "  Sign up",style: TextStyle(fontSize:20,color: Colors.purpleAccent))
                      ]
                  ),

                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
 
  Widget button(String name ,String image){
    return
      Container(
        height: 45,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black,width: 1),
        ),
        child: MaterialButton(

          onPressed: (){},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  height: 30,
                  width: 110,
                  child: Image.asset("assets/images/$image")),
              Text(name,style: TextStyle(fontSize: 15),)
            ],
          ),


        ),
      );
  }
}
