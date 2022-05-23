// ignore_for_file: prefer_const_constructors

import 'dart:ui';
import 'package:maa_castings/login_page.dart';
import 'package:flutter/material.dart';



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
          backgroundColor: Color(0xffffffff), //82bce3
      
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
                            image: AssetImage("assets/MAA_Castings.png"),
                            fit: BoxFit.fitWidth)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.35,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/say-hello-to-new-people.png"),
                            fit: BoxFit.cover)),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "The best acting is instinctive. It's not intellectual, it's not mechanical, it's instinctive.",
                    style: TextStyle(
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff99badd),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white

                  ),
                  
                  child: ElevatedButton(
                    onPressed: () {
                      
                    },
                    child: Text(
                      "Let's Go ! ",
                      style: TextStyle(fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(primary: Colors.transparent,
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(40),
                   ) )
                      
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,

                  width: MediaQuery.of(context).size.width * 0.7,
                  
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40)
                  ),
                  child: ElevatedButton(
                    
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff82bce3),

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)
                      )

                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      
    );
  }
}
