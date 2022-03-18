import 'package:flutter/material.dart';
class TextFormFieldView extends StatefulWidget {
  final  hint,label;
  final  obscure;
  final  border;
  final prefixicon;

  const TextFormFieldView({Key? key, required this.hint,required this.label, required this.obscure, this.border, this.prefixicon, }) : super(key: key);


  @override
  State<TextFormFieldView> createState() => _TextFormFieldState(hint,label,obscure,border,prefixicon);
}

class _TextFormFieldState extends State<TextFormFieldView> {
  final  hint,label;
  final obscure;
  final border;
  final prefixicon;
  _TextFormFieldState(this.hint, this.label, this.obscure, this.border, this.prefixicon);

  @override
  Widget build(BuildContext context) {
    return
      TextFormField(
        obscureText: obscure,
        decoration: InputDecoration(
          hintText: hint,
          labelText: label,
          border: border,
          suffixIcon: prefixicon,

        ),    );
  }
}
