import 'package:easyshop/AuthenticationModule/view/container.dart';
import 'package:flutter/material.dart';

import '../view/authbutton.dart';
import '../view/textformfield.dart';
class ChangePasswordViewController extends StatefulWidget {
  const ChangePasswordViewController({Key? key}) : super(key: key);

  @override
  State<ChangePasswordViewController> createState() => _ChangePasswordViewControllerState();
}

class _ChangePasswordViewControllerState extends State<ChangePasswordViewController> {
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(

      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height:size.height/12 ,),
              Row(
                children: [
                  Icon(Icons.arrow_back,),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 50.0),
                    child: Text("Change Password",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
             SizedBox(height: 25,),
             Text("Current Password"),

              TextFormFieldView(label: "",hint: "Current Password", obscure: true,
              prefixicon: Icon(Icons.lock,color: Colors.black12,),),
             SizedBox(height: 25,),
             Text("New Password"),
              TextFormFieldView(label: "",hint: "New Password", obscure: true,
              prefixicon: Icon(Icons.lock,color: Colors.black12,),),
             SizedBox(height: 25,),
             Text("Confirm Password"),
              TextFormFieldView(label: "",hint: "Confirm Password", obscure: true,
              prefixicon: Icon(Icons.lock,color: Colors.black12,),),
              SizedBox(height: 35,),

              Container(

                height: size.height/14,
                width: size.width/1.0,
                decoration: BoxDecoration(
                  color: Colors.blue,

                ),
                child: AuthButton(

                  name: "Submit",
                  textcolor: Colors.white,
                  fontsize: 25.0,
                  radius: 10.0,
                  splashcolor: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
