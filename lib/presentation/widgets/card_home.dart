import 'package:flutter/material.dart';
import 'package:untitled6/constant/color_manager.dart';



class DiscountCard extends StatelessWidget {
  const DiscountCard({
    Key ?key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Container(
            width: double.infinity,
            height: 166,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),

            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF1D1E23).withOpacity(0.7),
                    Color(0xFF1D1E23).withOpacity(0.7),

                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: <Widget>[

                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(color: Colors.white),
                          children: [
                            TextSpan(
                              text: "17 Sep,2023 \n",
                              style: TextStyle(fontSize: 16,color: Colors.grey),
                            ),
                            TextSpan(
                              text: "Energy Usage \n",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white
                              ),
                            ),
                            TextSpan(
                              text: "142.6",
                              style: TextStyle(
                                fontSize: 38,
                                fontWeight: FontWeight.bold,
                                color: AppColor.primary
                              ),
                            ),
                            TextSpan(
                              text: "kwh",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey
                              ),
                            ),
                            TextSpan(
                              text:
                              "12% less than yesterday",
                              style: TextStyle(fontSize: 11,color: Colors.grey),
                            ),
                          ],
                        ),
                      ),



                    ),
                    Expanded(
                        child:Icon(Icons.electric_bolt_outlined,color: Colors.white,size: 100,)
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}