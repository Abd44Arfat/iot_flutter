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
                              text: "Get Discount of \n",
                              style: TextStyle(fontSize: 16),
                            ),
                            TextSpan(
                              text: "30% \n",
                              style: TextStyle(
                                fontSize: 43,
                                fontWeight: FontWeight.bold,
                                color: AppColor.primary
                              ),
                            ),
                            TextSpan(
                              text:
                              "at MacDonald's on your first order & Instant cashback",
                              style: TextStyle(fontSize: 10),
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