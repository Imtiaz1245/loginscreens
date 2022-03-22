import 'package:flutter/material.dart';

class TextFormFieldView extends StatefulWidget {
  final  hint,label;
  bool isPassword;
  final  border;
   TextFormFieldView({Key? key, this.hint, this.label, this.isPassword=true, this.border}) : super(key: key);

  @override
  State<TextFormFieldView> createState() => _TextFormFieldViewState();
}

class _TextFormFieldViewState extends State<TextFormFieldView> {


String name = "Numan";
bool isObsure = false;

@override
void initState() {
  // TODO: implement initState
  super.initState();
  // if(widget.isPassword ==true){
  //   setState(() {
  //     isObsure=true;
  //   });
  // }
  setState(() {
    isObsure = widget.isPassword == true;

  });
}

@override
Widget build(BuildContext context) {
  return TextFormField(
    onChanged: (value) {
      print(value);
    },
    obscureText: isObsure,

    decoration: InputDecoration(

      suffixIcon: widget.isPassword
          ? GestureDetector(
          onTap: () {
            setState(() {
              isObsure = !isObsure;
            });
            // if(isObsure==true){
            //   isObsure=false;
            // }else{
            //   isObsure=true;
            // }
          },
          child: Icon(
            isObsure ? Icons.visibility : Icons.visibility_off,
            color: Colors.black,
          ))
          : SizedBox(),
      // hintText:name,
      hintText: widget.hint,
      enabledBorder: OutlineInputBorder(),
      border: widget.border,
      errorBorder: OutlineInputBorder(),
      focusedBorder: OutlineInputBorder(),
      disabledBorder: OutlineInputBorder(),
      focusedErrorBorder: OutlineInputBorder(),
    ),
  );
}
}
