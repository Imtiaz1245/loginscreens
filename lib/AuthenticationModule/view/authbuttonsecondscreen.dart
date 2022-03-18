import 'package:flutter/material.dart';
class AuthButtonScreen2 extends StatelessWidget {
  final onpress;
  final  childe;
  const AuthButtonScreen2({Key? key, required this.childe, this.onpress, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: onpress,
      child: childe,);
  }
}
