import 'package:flutter/material.dart';
import 'package:untitled6/presentation/screens/vertical%20box.dart';
import 'package:untitled6/presentation/widgets/box.dart';

import '../../constant/color_manager.dart';
import '../widgets/card_home.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List devices = [
    ['Smart Light', 'assets/images/air.png', true],
    ['Smart Tv', 'assets/images/Group 11.png', true],
    ['Light Room','assets/images/Group 11.png' ,false],
    ['Light Room', 'assets/images/lamp.png' ,true]
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff141415),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                'welcome\n abdelrhman',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 50,
              ),
              DiscountCard(),
              SizedBox(
                height: 50,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Shoes',
                    style: TextStyle(
color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextButton(
                    onPressed: () { Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  VerticalBoxList()),
                    ); }, child: Text( 'see all',
                    style: TextStyle(
                      color: AppColor.primary,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),),
                  ),

                ],
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: devices.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,childAspectRatio: 1/1.3,),
                    itemBuilder: (context, index) {
                      return Box(name: devices[index][0], url:devices[index][1] , switchstatus: devices[index][2],


                      );
                    }),
              ),
              SizedBox(height: 50,)
            ],
          ),
        ),
      ),
    );
  }
}
