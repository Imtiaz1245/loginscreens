import 'package:flutter/material.dart';
class AuthButtonScreen2 extends StatelessWidget {

 final  childe;
  const AuthButtonScreen2({Key? key, required this.childe, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: () {  },
      child: childe,);
  }
}
