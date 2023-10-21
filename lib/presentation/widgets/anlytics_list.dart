import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constant/color_manager.dart';
import '../widgets/custom_button.dart';

class RoomsScreens extends StatelessWidget {
  RoomsScreens({Key? key});

  List<List<dynamic>> devices = [
    ['Smart Light', 'Kwh', '369', Icons.lightbulb, '7 Devices'],
    ['Light', 'Kwh', '348', Icons.desktop_windows, '4 Devices'],
    ['Smart tv', 'Kwh', '25', Icons.tv, '3 Devices'],
    ['Smart sound', 'Kwh', '6548', Icons.surround_sound_outlined, '2 Devices'],
    ['Smart fridge', 'Kwh', '4369', Icons.lightbulb, '15 Devices'],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff141415),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: devices.length,
              itemBuilder: (context, index) {
                return AnlyticsItem(
                  name: devices[index][0],
                  unit: devices[index][1],
                  numberofdevices: devices[index][4],
                  cost: devices[index][2],
                  icon: devices[index][3],
                );
              },
            ),
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

class AnlyticsItem extends StatelessWidget {
  final String name;
  final String unit;
  final String numberofdevices;
  final String cost;
  final IconData icon;

  const AnlyticsItem({
    Key? key,
    required this.name,
    required this.unit,
    required this.numberofdevices,
    required this.cost,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 45,
            decoration: BoxDecoration(
              color: Color(0xFF1D1E23).withOpacity(0.7),
              shape: BoxShape.circle,
            ),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          SizedBox(width: 10.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
              Text(
                numberofdevices,
                style: TextStyle(fontSize: 12.0, color: Colors.grey),
              ),
            ],
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cost,
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
              Text(
                unit,
                style: TextStyle(fontSize: 12.0, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}