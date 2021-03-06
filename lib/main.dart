import 'package:easyshop/screendesign/profilescreen/profilecontroller.dart';
import 'package:flutter/material.dart';
import 'AuthenticationModule/ViewController/loginscreen2.dart';
import 'screendesign/appointment/appointmentcard.dart';
import 'AuthenticationModule/ViewController/change_password.dart';
import 'AuthenticationModule/ViewController/profilecontroller.dart';
import 'screendesign/customdialog/customdialogcontroller/dialogcontroller.dart';


void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splash(),
    )
  );
}
class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          child: Image.asset("assets/images/google.png"),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    login();
  }
  void login()async{

    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ProfoleController1()));

  }
}
