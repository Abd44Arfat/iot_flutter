import 'package:flutter/material.dart';
import 'package:untitled6/constant/color_manager.dart';

import 'package:untitled6/presentation/screens/devices_screen.dart';
import 'package:untitled6/presentation/screens/rooms_screens.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({Key? key}) : super(key: key);

  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }









  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xff141415),

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff141415),
title: Center(child: Text('Devives')),
        leading: Icon(Icons.arrow_back_ios_new_rounded),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.search),
          )
          
        ],

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                SizedBox(height: 50),
                Container(
                  // height: 50,
                  width: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      color: Color(0xff0D1012),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: TabBar(
                          unselectedLabelColor: Colors.grey,
                          labelColor: AppColor.primary,
                          indicatorColor: Colors.white,
                          indicatorWeight: 2,
                          indicator: BoxDecoration(
                            color: Color(0xff2C3033),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          controller: tabController,
                          tabs: [
                            Tab(
                              text: 'Rooms',
                            ),
                            Tab(
                              text: 'Devices',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      RoomsScreen(),
                      DevicesScreen(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}