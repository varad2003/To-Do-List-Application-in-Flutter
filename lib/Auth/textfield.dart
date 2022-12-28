// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputText extends StatefulWidget {
  const InputText(String s, bool bool, {Key? key}) : super(key: key);

  @override
  State<InputText> createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  @override

  InputText(var txt,var islgin){
    // _password=pas;
    // _email=email;
    // _username=usernme;
    _islogin=islgin;
    _text=txt;
  }
  final _formkey=GlobalKey<FormState>();
  // var _password="";
  // var _email="";
  // var _username;
  var _islogin=false;
  var _text="";

  Widget build(BuildContext context) {
    if(_islogin) {
      return Container(
          child: TextFormField(
        keyboardType: TextInputType.visiblePassword,
        key: ValueKey(_text),
        validator: (value) {
          if (value?.length == 0) {
            return "incorrect password";
          }
          return null;
        },
        onSaved: (value) {
          _text = value!;
        },
        decoration: InputDecoration(
          fillColor: Colors.green,
            border: OutlineInputBorder(
                borderRadius: new BorderRadius.circular(8.0),
                borderSide: new BorderSide()),
            labelText: "Enter $_text",
            labelStyle: GoogleFonts.roboto()),
      ));
    }
    else {
      return Container();
    }
  }
}
