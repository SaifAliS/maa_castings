import 'package:flutter/material.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  final GlobalKey<ExpansionTileCardState> cardA = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardB = new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardC = new GlobalKey();
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
           
            body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/proback.png"), fit: BoxFit.cover),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20,),
                      Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 100,
                              width: 100,
                              child: Icon(
                                Icons.photo_camera,
                                size: 35,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(70),
                                  color: Color(0xffe5e5e5)),
                            ),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Profile",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.grey),
                        ),
                      ),
                      SizedBox(height: 25),
                      Text(
                        "Profile Details",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ExpansionTileCard(
                        baseColor: Colors.transparent,
                        expandedColor: Color(0xffe2f2ff),
                        key: cardA,
                        leading: CircleAvatar(child: Icon(Icons.person)),
                        title: Text("Personal Details",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Name",
                                        style: TextStyle(fontSize: 18,),
                                      )),
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        "Saif Ali Shaik",
                                        style: TextStyle(fontSize: 18),
                                      ))
                                ]),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding:EdgeInsets.fromLTRB(25, 0, 25, 0),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Screen Name",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Text(
                                    "Saif Ali Shaik",
                                    style: TextStyle(fontSize: 18),
                                  )
                                ]),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Email ID",
                                        style: TextStyle(fontSize: 18,),
                                      )),
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        "example@gmail.com",
                                        style: TextStyle(fontSize: 18),
                                      ))
                                ]),
                          ),
                          SizedBox(height:10,)
                        ],
                      ),
                      SizedBox(height: 10,),
                      ExpansionTileCard(
                        baseColor: Colors.transparent,
                        expandedColor: Color(0xffe2f2ff),
                        key: cardB,
                        leading: CircleAvatar(child: Icon(Icons.contact_mail)),
                        title: Text("Manager Details",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Manager Name",
                                        style: TextStyle(fontSize: 18,),
                                      )),
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        "Saif Ali Shaik",
                                        style: TextStyle(fontSize: 18),
                                      ))
                                ]),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding:EdgeInsets.fromLTRB(25, 0, 25, 0),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Manager Number",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Text(
                                    "9999999999",
                                    style: TextStyle(fontSize: 18),
                                  )
                                ]),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                      SizedBox(height: 10,),
                      ExpansionTileCard(
                        baseColor: Colors.transparent,
                        expandedColor: Color(0xffe2f2ff),
                        key: cardC,
                        leading: CircleAvatar(child: Icon(Icons.card_membership)),
                        title: Text("MAA Membership Details",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "Membership ID",
                                        style: TextStyle(fontSize: 18,),
                                      )),
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        "19121A04L3",
                                        style: TextStyle(fontSize: 18),
                                      ))
                                ]),
                          ),
                          SizedBox(height: 10),
                          
                        ],
                      ),
                    ]),
              ),
            )));
  }
}
