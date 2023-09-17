import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constant/color_manager.dart';
import '../widgets/custom_button.dart';

class VerticalBoxList extends StatelessWidget {
  VerticalBoxList({super.key});

  List devices = [
    ['Smart Light', 'assets/images/air.png', true],
    ['Smart Tv', 'assets/images/Group 11.png', true],
    ['Light Room', 'assets/images/Group 11.png', false],
    ['Light Room', 'assets/images/lamp.png', true]
  ];

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
          SizedBox(height: 30,),
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
          SizedBox(height: 10,),

        ],
      ),
    );
  }}
class VirticalBox extends StatefulWidget {
  VirticalBox({
    super.key,
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
  bool switchStatus = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Color(0xFF1D1E23).withOpacity(0.7),
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Text(
                widget.name,
                style: TextStyle(color: Colors.white, fontSize: 25),
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Transform.rotate(
                    angle: pi,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          switchStatus = !switchStatus;
                        });
                      },
                      child: Stack(
                        children: [
                          Container(
                            width: 30,
                            // Adjust the width to control the size of the track
                            height: 60,
                            // Adjust the height to control the size of the track
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: switchStatus
                                  ? AppColor.primary
                                  : Colors.grey.withOpacity(0.5),
                            ),
                          ),
                          Positioned(
                            top: switchStatus ? 33 : 4,
                            // Adjust the position of the thumb vertically
                            left: 5,
                            // Adjust the position of the thumb horizontally
                            child: Container(
                              width: 20,
                              // Adjust the width to control the size of the thumb
                              height: 20,
                              // Adjust the height to control the size of the thumb
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: switchStatus
                                    ? Colors.white
                                    : Color(0xFF1D1E23),

                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                      height: 100,
                      child: Image.asset(
                        widget.url,
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
