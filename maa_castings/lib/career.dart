import 'package:flutter/material.dart';

class Career extends StatefulWidget {
  Career({Key? key}) : super(key: key);

  @override
  State<Career> createState() => _CareerState();
}

class _CareerState extends State<Career> {
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
