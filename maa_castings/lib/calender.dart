import 'package:flutter/material.dart';

class Calender extends StatefulWidget {
  Calender({Key? key}) : super(key: key);

  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
              backgroundColor: Color(0xffe2f2ff),
              elevation: 0,),
      body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/proback.png"), fit: BoxFit.cover),
              ),)
    ));
  }
}
