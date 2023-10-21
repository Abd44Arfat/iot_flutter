import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled6/constant/color_manager.dart';

class Box extends StatefulWidget {
  Box({
    super.key,
    required this.name,
    required this.switchstatus,
    required this.url, required this.room,
  });

  final String name;
  final String room;
  final bool switchstatus;
  final String url;

  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  bool switchStatus = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 100,
        width: 150,
        decoration: BoxDecoration(
            color: Color(0xFF1D1E23).withOpacity(0.7),
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.only(left: 8,top: 8,),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                widget.name,
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
                      Text(
                        widget.room,
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                    ],
                  )),
              Row(
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
                  Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(20)),
                          child: Image.asset(
                    widget.url,
                  )))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
