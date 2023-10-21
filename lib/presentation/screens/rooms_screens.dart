import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constant/color_manager.dart';
import '../widgets/custom_button.dart';

class RoomsScreen extends StatelessWidget {
  RoomsScreen({Key? key});

  List devices = [
    ['Living Room', 'assets/images/ss.jpg', true],
    ['Kitchen', 'assets/images/rr.jpg', true],
    ['Living Room2', 'assets/images/tt.png', false],
    ['Light Room', 'assets/images/rr.jpg', true]
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
                return VirticalBox(
                  name: devices[index][0],
                  url: devices[index][1],
                  switchstatus: devices[index][2],
                );
              },
            ),
          ),
          SizedBox(
            height: 30,
          ),
          CustomButton(
            size: 300,
            press: () {
              // Add your logic for the button press here
            },
            text: 'Add New Device',
            color: AppColor.primary,
            height: 56,
            fontesiz: 15,
            textColor: Colors.white,
            icon: Icons.add,
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

class VirticalBox extends StatefulWidget {
  VirticalBox({
    Key? key,
    required this.name,
    required this.switchstatus,
    required this.url,
  });

  final String name;
  final bool switchstatus;
  final String url;

  @override
  State<VirticalBox> createState() => _BoxState();
}

class _BoxState extends State<VirticalBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Stack(
        children: [
          Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFF1D1E23).withOpacity(0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                widget.url,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Opacity(
            opacity: 0.5,
            child: Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 16.0,
            ),
            child: Text(
              widget.name,
              style: Theme.of(context).textTheme.headline4!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}