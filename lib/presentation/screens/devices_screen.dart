import 'package:flutter/material.dart';
import 'package:untitled6/presentation/widgets/box.dart';

import 'device_details_screen.dart';

class DevicesScreen extends StatelessWidget {
  DevicesScreen({Key? key}) : super(key: key);
  List devices = [
    ['Smart Light', 'assets/images/air.png','livingroom', true],
    ['Smart Tv', 'assets/images/Group 11.png','livingroom', true],
    ['Light Room', 'assets/images/Group 11.png','livingroom', false],
    ['Light Room', 'assets/images/lamp.png','livingroom', true]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xff141415),


      body: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            child: ListView.builder(
              itemCount: devices.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsDevice(
                          name: devices[index][0],
                          imageUrl: devices[index][1],
                          switchStatus: devices[index][2],
                        ),
                      ),
                    );
                  },
                  child: Box(
                    name: devices[index][0],
                    url: devices[index][1],
                    switchstatus: devices[index][3], room: devices[index][2],
                  ),
                );
              },
            ),
          ),
          Container(
            height: 200,
            width: double.infinity,
            child: ListView.builder(

                itemCount: devices.length,
                scrollDirection: Axis.horizontal, itemBuilder: ( context, index) {
              return Box(name: devices[index][0], url:devices[index][1] , switchstatus: devices[index][3], room:devices[index][2],
              );}),
          ), Container(
            height: 200,
            width: double.infinity,
            child: ListView.builder(

                itemCount: devices.length,
                scrollDirection: Axis.horizontal, itemBuilder: ( context, index) {
              return Box(name: devices[index][0], url:devices[index][1] , switchstatus: devices[index][3], room: devices[index][2],
              );}),
          ),
        ],
      ),
    );
  }
}
