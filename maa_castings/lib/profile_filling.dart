import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class ProfileFilling extends StatefulWidget {
  ProfileFilling({Key? key}) : super(key: key);

  @override
  State<ProfileFilling> createState() => _ProfileFillingState();
}

class _ProfileFillingState extends State<ProfileFilling> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          toolbarHeight: 200,
          elevation: 0,
          backgroundColor: Color(0xffe5e5e5),
          title: Padding(
            padding: EdgeInsets.fromLTRB(10,0, 10, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Fill Your Sign Up Details",style: TextStyle(fontSize: 23,),),
                
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Personal",style: TextStyle(fontSize: 13),),
                    Text("Manager",style: TextStyle(fontSize: 13),),
                    Text("MAA Membership",style: TextStyle(fontSize: 13),)
                  ],
                ),
                StepProgressIndicator(totalSteps: 3,
                selectedColor: Color(0xff3399ff),
                currentStep: 1,


                )
              ],
            ),
          ),
        ),
        backgroundColor: Color(0xffe5e5e5),
        body: Container(
            padding: EdgeInsets.all(25),
            margin: const EdgeInsets.only(top: 6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(1.0, 0.0), //(x,y)
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: personal_details()),
      ),
    );
  }

  Widget verify_maa() {
    return Column(
      children: [
        Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "MAA Membership Details",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            )),
        SizedBox(
          height: 20,
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            "MAA Membership ID",
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
          ),
        ),
        input_field(),
        GestureDetector(
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Verify *",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff3399ff)),
                )),
                onTap: (){},),
        Spacer(),
        SizedBox(
          height: 50,
          width: 350,
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              "Submit",
              style: TextStyle(fontSize: 18),
            ),
            style: ElevatedButton.styleFrom(
                primary: Color(0xff99ccff),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                )),
          ),
        )
      ],
    );
  }

  Widget manager_details() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Enter Your Manager Details",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            )),
        SizedBox(
          height: 20,
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            "Manager Name",
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
          ),
        ),
        input_field(),
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            "Manager Number",
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
          ),
        ),
        input_field(),
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            "Manager Email ID",
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
          ),
        ),
        input_field(),
        Spacer(),
        SizedBox(
          height: 50,
          width: 350,
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              "Next",
              style: TextStyle(fontSize: 18),
            ),
            style: ElevatedButton.styleFrom(
                primary: Color(0xff99ccff),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                )),
          ),
        )
      ],
    );
  }

  Widget personal_details() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Enter Your Details",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            )),
        SizedBox(
          height: 20,
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            "Name",
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
          ),
        ),
        input_field(),
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            "Screen Name",
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
          ),
        ),
        input_field(),
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            "Email ID",
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey),
          ),
        ),
        input_field(),
        Spacer(),
        SizedBox(
          height: 50,
          width: 350,
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              "Next",
              style: TextStyle(fontSize: 18),
            ),
            style: ElevatedButton.styleFrom(
                primary: Color(0xff99ccff),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                )),
          ),
        )
      ],
    );
  }

  Widget input_field() {
    var deco = OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xffe5e5e5)),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Container(
          decoration:
              BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5))),
          height: 50,
          child: TextField(
            decoration: InputDecoration(
              focusedBorder: deco,
              enabledBorder: deco,
              disabledBorder: deco,
              border: InputBorder.none,
              fillColor: Color.fromRGBO(224, 224, 224, 1),
              filled: true,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
