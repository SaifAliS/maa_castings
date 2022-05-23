import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:maa_castings/Profile_screen.dart';
import 'package:maa_castings/calender.dart';
import 'package:maa_castings/career.dart';


class Main extends StatefulWidget {
  Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  int _currentIndex = 0;
  late PageController _pageController;
   @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       centerTitle: true,
       title: Container(
         height: 70,
         child:Image.asset("assets/MAA_Castings.png"),
         decoration: BoxDecoration(
           
         ),
       ),
              backgroundColor: Color(0xffe2f2ff),
              elevation: 0,),
      
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            ProfileScreen(),
            Career(),
            Calender(),
            
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
         selectedIndex: _currentIndex,
         showElevation: false,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
           BottomNavyBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
            activeColor: Color(0xff99badd),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.padding),
            title: Text('Career Details'),
            activeColor: Color(0xff99badd),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.calendar_today_rounded),
            title: Text('Availability'),
            activeColor: Color(0xff99badd),
            textAlign: TextAlign.center,
          ),
         
        ],
      ),
    );
  }
}








// class Main extends StatefulWidget {
//   Main({Key? key}) : super(key: key);

//   @override
//   State<Main> createState() => _MainState();
// }

// class _MainState extends State<Main> {
//   int _currentIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//       bottomNavigationBar: BottomNavyBar(
//         showElevation: false,
//         selectedIndex: _currentIndex,
//         items: [
//           BottomNavyBarItem(
//             icon: Icon(Icons.person),
//             title: Text('Profile'),
//             activeColor: Color(0xff99badd),
//             textAlign: TextAlign.center,
//           ),
//           BottomNavyBarItem(
//             icon: Icon(Icons.padding),
//             title: Text('Career Details'),
//             activeColor: Color(0xff99badd),
//             textAlign: TextAlign.center,
//           ),
//           BottomNavyBarItem(
//             icon: Icon(Icons.calendar_today_rounded),
//             title: Text('Availability'),
//             activeColor: Color(0xff99badd),
//             textAlign: TextAlign.center,
//           ),
//         ],
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         onItemSelected: (index) => setState(() => _currentIndex = index),
//       ),
//     ));
//   }
// }
