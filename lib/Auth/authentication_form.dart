import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes_app/Auth/textfield.dart';
import 'authentication_screen.dart';

class Authentication_Forn extends StatefulWidget {
  const Authentication_Forn(  {Key? key}) : super(key: key);

  @override
  State<Authentication_Forn> createState() => _Authentication_FornState();
}

class _Authentication_FornState extends State<Authentication_Forn> {
  @override

  // Authentication_Forn(bool login){
  //   _islogin=login;
  // }
  final _formkey=GlobalKey<FormState>();
  var _password="";
  var _email="";
  var _username="";
  bool islogin=false;
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,

      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10,top: 10,right: 10),
            child: Form(
              key: _formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  if(!islogin)
                    TextFormField(
                      keyboardType: TextInputType.text,
                      key: ValueKey('Username'),
                      validator: ( value){
                        if(value?.length == 0){
                          return "incorrect username";
                        }
                        return null;
                      },
                      onSaved:(value) {
                        _username=value!;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(8.0),
                              borderSide: new BorderSide()),
                          labelText: "Enter Username",
                          labelStyle: GoogleFonts.roboto()),

                    ),
                  SizedBox(
                      height:10
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    key: ValueKey('Email'),
                    validator: ( value){
                      if(value?.length == 0 || !value!.contains('@')){
                            return "incorrect mail";
                      }
                      return null;
                    },
                onSaved:(value) {
                  _email=value!;
                },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(8.0),
                        borderSide: new BorderSide()),
                        labelText: "Enter Email",
                        labelStyle: GoogleFonts.roboto()),

                      ),
                  SizedBox(
                      height:10
                  ),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    key: ValueKey('Password'),
                    validator: ( value){
                      if(value?.length == 0){
                        return "incorrect password";
                      }
                      return null;
                    },
                    onSaved:(value) {
                      _password=value!;
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(8.0),
                            borderSide: new BorderSide()),
                        labelText: "Enter Password",
                        labelStyle: GoogleFonts.roboto()),

                  ),
                    ],
                  ),


            ),
              ),
            ],
          ),
    );
  }
}
