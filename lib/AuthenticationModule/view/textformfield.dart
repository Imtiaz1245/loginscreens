import 'package:flutter/material.dart';

class TextFormFieldView extends StatefulWidget {
  final  hint,label,prefixicon;
  bool isPassword;
  final  border;
  final controller;
  final suffixiconcondition;
   TextFormFieldView({Key? key, this.hint, this.label, this.isPassword=false, this.border, this.controller, this.prefixicon, this.suffixiconcondition=false}) : super(key: key);

  @override
  State<TextFormFieldView> createState() => _TextFormFieldViewState();
}

class _TextFormFieldViewState extends State<TextFormFieldView> {


bool isObsure = false;

@override
void initState() {
  super.initState();

  setState(() {
    isObsure = widget.isPassword == true;

  });
}

@override
Widget build(BuildContext context) {
  return TextFormField(
    controller: widget.controller,
    onChanged: (value) {
      print(value);
    },
    obscureText: isObsure,

    decoration: InputDecoration(
      prefixIcon: widget.prefixicon,
      suffixIcon: widget.suffixiconcondition?IconButton( icon:Icon(Icons.arrow_drop_down_sharp), onPressed: () {  },):widget.isPassword
          ? GestureDetector(
          onTap: () {
            setState(() {
              isObsure = !isObsure;
            });

          },
          child: Icon(
            isObsure ? Icons.visibility : Icons.visibility_off,
            color: Colors.black,
          ))
          : SizedBox(),
      // hintText:name,
      hintText: widget.hint,
      border: widget.border,

    ),
  );
}
}
