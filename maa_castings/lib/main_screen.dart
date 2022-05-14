import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

class Main extends StatefulWidget {
  Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: BottomNavyBar(
        showElevation: false,
        selectedIndex: _currentIndex,
        items: [
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
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        onItemSelected: (index) => setState(() => _currentIndex = index),
      ),
    ));
  }
}
