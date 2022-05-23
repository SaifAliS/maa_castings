import 'package:flutter/material.dart';
import 'package:maa_castings/Profile_screen.dart';
import 'package:maa_castings/home_page.dart';
import 'package:maa_castings/main_screen.dart';
import 'package:maa_castings/profile_filling.dart';
import 'package:maa_castings/login_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Main(),
      theme: ThemeData(
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Color(0xffe5e5e5),
        ),
        primarySwatch:Colors.lightBlue
      ),
    );
  }
}