

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:untitled6/constant/color_manager.dart';
import 'package:untitled6/presentation/screens/home-screen.dart';
import 'package:untitled6/presentation/screens/Spash.dart';
import 'package:untitled6/presentation/screens/voice_screen.dart';

import '../widgets/tabBar.dart';
import 'devices_screen.dart';
import 'vertical box.dart';
import 'charts.dart';
import 'edit_profile.dart';






class test extends StatefulWidget {
  @override
  _testState createState() => _testState();
}
class _testState extends State<test> with SingleTickerProviderStateMixin {

  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff141415),

      resizeToAvoidBottomInset: false,
      extendBody: true,
      body: TabBarView(
        children: <Widget>[
          HomeScreen(),
          TabBarPage(),
          SpeechScreen(),
          LineChartSample2(),
          ProfileScreen(),
        ],
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
      ),
      bottomNavigationBar: Container(
        height: 80,
        padding: EdgeInsets.only(top:25),
        margin: EdgeInsets.symmetric(horizontal: 22),
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(80.0),
          ),
          child: Container(
            color: Colors.black45.withOpacity(0.9),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: TabBar(
                labelColor:AppColor.primary,
                unselectedLabelColor: Colors.white,
                labelStyle: TextStyle(fontSize: 10.0),
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(color: Color(0xff141415),
                     width: 0.0),
                ),
                indicatorColor: Colors.black54,
                tabs: <Widget>[
                  Tab(
                    icon: Icon(
                      Icons.home,
                      size: 24.0,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.category,
                      size: 24.0,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.category,
                      size: 24.0,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.search,
                      size: 24.0,
                    ),
                  ), Tab(
                    icon: Icon(
                      Icons.search,
                      size: 24.0,
                    ),
                  ),
                ],
                controller: _tabController,
              ),
            ),
          ),
        ),
      ),
    );
  }
}