import 'dart:async';

import 'package:flutter/material.dart';
import 'package:task1/main.dart';

class Spashscreen extends StatefulWidget{
  @override
  State<Spashscreen> createState() => _SpashscreenState();
}

class _SpashscreenState extends State<Spashscreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 2), (){

      Navigator.pushReplacement(
        context, 
        MaterialPageRoute(builder: (context)=>Home()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/bgimageslide.png"),
          fit: BoxFit.fill
          ),
        ),
      ),
    );
  }
}