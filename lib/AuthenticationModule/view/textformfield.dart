import 'package:flutter/material.dart';
class TextFormFieldView extends StatefulWidget {
  final  hint,label;
  final  obscure;
  final  border;

  const TextFormFieldView({Key? key, required this.hint,required this.label, required this.obscure, this.border}) : super(key: key);


  @override
  State<TextFormFieldView> createState() => _TextFormFieldState(hint,label,obscure,border);
}

class _TextFormFieldState extends State<TextFormFieldView> {
  final  hint,label;
  final obscure;
  final border;

  _TextFormFieldState(this.hint, this.label, this.obscure, this.border);

  @override
  Widget build(BuildContext context) {
    return
      TextFormField(
        obscureText: obscure,
        decoration: InputDecoration(
          hintText: hint,
          labelText: label,
          border: border,

        ),    );
  }
}
