import 'package:flutter/material.dart';
import 'package:untitled6/constant/color_manager.dart';
import 'package:untitled6/presentation/screens/Spash.dart';
import 'package:untitled6/presentation/screens/home-screen.dart';
import 'package:untitled6/presentation/screens/root_screen.dart';
import 'package:untitled6/presentation/screens/vertical%20box.dart';
import 'package:untitled6/presentation/widgets/anlytics_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      debugShowCheckedModeBanner: false,
      theme: ThemeData(

fontFamily: 'Barlow'

      ),
      home: SplashPage()
    );
  }
}
