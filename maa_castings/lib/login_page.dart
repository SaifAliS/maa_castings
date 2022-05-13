import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xffe5e5e5),
      body: Padding(
        padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                "Login",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(height: 100, child: Lottie.asset("login.json")),
            SizedBox(height: 10,),
             Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "YOUR PHONE NUMBER",
                  style: TextStyle(fontSize: 14),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 50,
                child: TextField(
                  
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "PASSWORD",
                  style: TextStyle(fontSize: 14),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                child: TextField(
                  
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                onTap: () {},
              ),
           

          ],
        ),
      ),
      bottomSheet: Column(
      
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              child: Container(
                decoration:BoxDecoration(
                  color: Colors.transparent
                ),
                alignment: Alignment.center,
                child: Text(
                  "I don't have an account!",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              onTap: () {
               
              },
            ),
            SizedBox(height: 10),
            GestureDetector(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.09,
                  width: MediaQuery.of(context).size.width * 1.0,
                  color: Color(0xff82bce3),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Login",
                          style: TextStyle(fontSize: 23, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: (){}),]),
                 

    ));
  }
}
