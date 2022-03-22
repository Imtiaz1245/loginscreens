import 'package:flutter/material.dart';
class AcceptDecButton extends StatelessWidget {
  final name,color,txtcolor;
  const AcceptDecButton({Key? key, this.name, this.color, this.txtcolor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Expanded(child: Container(
      height: 60,
      child: Padding(
        padding:  EdgeInsets.all(8.0),
        child: MaterialButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          color: color, onPressed: () {  },
          child: Text(name,style: TextStyle(color: txtcolor,fontSize: 20),),
        ),
      ),
    ));
  }
}
