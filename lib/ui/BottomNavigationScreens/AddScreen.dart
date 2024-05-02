import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AddScreen extends StatefulWidget {
  @override
  _AddScreenState createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Center(child: Text('Add Screen', textScaleFactor: 2.0)),
          ),
        ),
      ),
    );
  }
}
