import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../constants.dart';

class Ads_container extends StatelessWidget {
  const Ads_container({super.key});

  @override
  Widget build(BuildContext context) {
        final Size screensize = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: screensize.height * 0.53,
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                blurRadius: 2, blurStyle: BlurStyle.outer, color: Colors.grey)
          ]),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: screensize.width * 0.89,
            decoration: BoxDecoration(
                color: constantwhite,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: screensize.width * 0.47,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://www.mensjournal.com/wp-content/uploads/mf/the-truth-about-post-workout-nutrition-main.jpg?w=900&h=506&crop=1&quality=86&strip=all'),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: screensize.width * 0.05,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Our  Al powered plan to help you gain 3 kgs',
                    style: TextStyle(
                        color: constantblack,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: screensize.width * 0.04,
                ),
                Padding(
                  padding: EdgeInsets.only(left: screensize.width * 0.06),
                  child: Row(
                    children: [
                      Icon(
                        Icons.call_to_action,
                        color: constantblack,
                      ),
                      SizedBox(
                        width: screensize.width * 0.04,
                      ),
                      Text(
                        'Customizable Diet Plan',
                        style: TextStyle(
                            color: constantblack,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ],
                  ),
                ),
                //2
                SizedBox(
                  height: screensize.width * 0.03,
                ),
                Padding(
                  padding: EdgeInsets.only(left: screensize.width * 0.06),
                  child: Row(
                    children: [
                      Icon(
                        Icons.call_to_action,
                        color: constantblack,
                      ),
                      SizedBox(
                        width: screensize.width * 0.04,
                      ),
                      Text(
                        'Customizable Diet Plan',
                        style: TextStyle(
                            color: constantblack,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screensize.width * 0.03,
                ),
                //3
                Padding(
                  padding: EdgeInsets.only(left: screensize.width * 0.06),
                  child: Row(
                    children: [
                      Icon(
                        Icons.call_to_action,
                        color: constantblack,
                      ),
                      SizedBox(
                        width: screensize.width * 0.04,
                      ),
                      Text(
                        'Customizable Diet Plan',
                        style: TextStyle(
                            color: constantblack,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //
          ),

          ///
          ///
          Padding(
            padding: EdgeInsets.only(top: screensize.width * 0.058),
            child: Text(
              'EXPLORE SMART',
              style: TextStyle(
                  color: constantwhite,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
