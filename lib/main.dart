import 'package:flutter/material.dart';
import 'package:notes_app/Auth/authentication_screen.dart';

import 'Screens/home.dart';

void main(){
  runApp (myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Authentication_Screen(),
    );
  }
}
