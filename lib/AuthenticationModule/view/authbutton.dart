import 'package:flutter/material.dart';
class AuthButton extends StatelessWidget {
  final name,radius,color,splashcolor,fontsize,textcolor,onpres;

  const AuthButton({Key? key, this.name, this.radius, this.color, this.splashcolor, this.fontsize, this.textcolor, this.onpres}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: onpres,
      color: color,
    splashColor: splashcolor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
    child: Text(name,style: TextStyle(color: textcolor,fontSize: fontsize),),
    );
  }
}
