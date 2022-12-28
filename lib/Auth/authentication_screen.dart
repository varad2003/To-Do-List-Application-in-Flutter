import 'package:flutter/material.dart';
import 'package:notes_app/Auth/authentication_form.dart';

class Authentication_Screen extends StatefulWidget {
  const Authentication_Screen({Key? key}) : super(key: key);

  @override
  State<Authentication_Screen> createState() => _Authentication_ScreenState();
}

class _Authentication_ScreenState extends State<Authentication_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Authentication"),
      ),
      body:  Authentication_Forn(),
    );
  }
}
