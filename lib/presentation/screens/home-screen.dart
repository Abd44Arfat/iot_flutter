import 'package:flutter/material.dart';
import 'package:untitled6/presentation/screens/vertical%20box.dart';
import 'package:untitled6/presentation/widgets/box.dart';

import '../../constant/color_manager.dart';
import '../widgets/card_home.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List devices = [
    ['Air condition', 'assets/images/air.png', 'living room', true],
    ['Mt-256', 'assets/images/Group 11.png', 'living room', true],
    ['Mt-565', 'assets/images/Group 11.png', 'living room', false],
    ['Light Room', 'assets/images/lamp.png', 'living room', true]
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff141415),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Text(
                    'welcome,\n abdelrhman',
                    style: TextStyle(color: Colors.white,fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                DiscountCard(),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        'Popular Shoes',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => VerticalBoxList()),
                        );
                      },
                      child: Text(
                        'see all',
                        style: TextStyle(
                          color: AppColor.primary,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: devices.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1 / 1.3,
                  ),
                  itemBuilder: (context, index) {
                    return Box(
                      name: devices[index][0],
                      url: devices[index][1],
                      switchstatus: true,
                      room: devices[index][2],
                    );
                  },
                ),
                SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}