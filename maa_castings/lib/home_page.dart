// ignore_for_file: prefer_const_constructors

import 'dart:ui';
import 'package:maa_castings/login_page.dart';
import 'package:flutter/material.dart';
import 'package:blurrycontainer/blurrycontainer.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffe5e5e5), //82bce3
      
        body: Padding(
          padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.5,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        
                          image: AssetImage("MAA_Castings.png"),
                          fit: BoxFit.fitWidth)),
                ),
              ),
              SizedBox(height:20,),
               Align(
                alignment: Alignment.center,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.35,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("say-hello-to-new-people.png"),
                          fit: BoxFit.cover)),
                ),
              ),
              SizedBox(height: 40,),
              Align(
                alignment:Alignment.center,
                child: Text("The best acting is instinctive. It's not intellectual, it's not mechanical, it's instinctive.",style: TextStyle(
                  fontSize:16,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,color: Color(0xff99badd),
                  
                ),textAlign: TextAlign.center,),
              ),
              SizedBox(height: 30,),
              
              Container(
                height: 40,
                
                width: MediaQuery.of(context).size.width * 0.7,
                color: Colors.white,
                child: ElevatedButton(onPressed: (){}, child: Text("Sign Up",style: TextStyle(
                  fontSize: 15
                ),),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
              
                ),),
              ),
              SizedBox(height: 20,),
               Container(
                height: 40,
                width: MediaQuery.of(context).size.width * 0.7,
                color: Colors.white,
                child: ElevatedButton(onPressed: (){
                   Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Login()),
  );
                }, child: Text("Login",style: TextStyle(
                  fontSize: 15
                ),),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Color(0xff82bce3)),
              
                ),),
              )
              
            ],
          ),
        ),
        
      ),
    );
  }
}
