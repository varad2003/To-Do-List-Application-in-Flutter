import 'package:flutter/material.dart';
import 'package:notes_app/Auth/authentication_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('ToDo'),


        ),
      body: Authentication_Screen(),
    );
  }
}

