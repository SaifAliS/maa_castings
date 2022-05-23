import 'package:flutter/material.dart';

class Career extends StatefulWidget {
  Career({Key? key}) : super(key: key);

  @override
  State<Career> createState() => _CareerState();
}

class _CareerState extends State<Career> {
  final List<Map> myProducts =
      List.generate(100, (index) => {"id": index, "name": "Category $index"})
          .toList();
  @override
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
          mainAxisSize: MainAxisSize.max,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Career Details",
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                )),
            SizedBox(height: 20),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Three Recent Films",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey))),
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Edit"),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff99ccff),
                    ),
                  ),
                ),
              )
            ]),
            SizedBox(
              height: 10,
            ),
            moviename(),
            moviename(),
            moviename(),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Acting Category",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey))),
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Edit"),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff99ccff),
                    ),
                  ),
                ),
              )
            ]),
            SizedBox(height: 10),
            categorycontainer(),
            SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text("Albums",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey))),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      color: Color(0xffe5e5e5),
                      height: 150,
                      width: 150,
                      child: Icon(
                        Icons.photo_album_rounded,
                        size: 60,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (() {}),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      color: Color(0xffe5e5e5),
                      height: 150,
                      width: 150,
                      child: Icon(
                        Icons.photo_album_rounded,
                        size: 60,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    )));
  }

  Widget categorycontainer() {
    return Container(
      // color: Colors.black,
      height: 150,
      width: 400,
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 100,
              childAspectRatio: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          itemCount: myProducts.length,
          itemBuilder: (BuildContext ctx, index) {
            return Column(children: [
              Container(
                alignment: Alignment.center,
                height: 35,
                width: 150,
                child: Text(
                  myProducts[index]["name"],
                  style: TextStyle(fontSize: 13),
                ),
                decoration: BoxDecoration(
                    color: Color(0xffe2f2ff),
                    borderRadius: BorderRadius.circular(15)),
              ),
              SizedBox(height: 5),
            ]);
          }),
    );
  }

  Widget moviename() {
    return Column(children: [
      Align(
          alignment: Alignment.centerLeft,
          child: Container(
            height: 30,
            alignment: Alignment.center,
            width: 150,
            child: Text(
              "KGF Chapter 2",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5.0,
                ),
              ],
            ),
          )),
      SizedBox(
        height: 10,
      )
    ]);
  }
}
