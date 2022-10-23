import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../constants.dart';

class Meals_container extends StatelessWidget {
  final String imagepath;
  final Color semicirclecolor;
  final Color maincontainercolor1;
  final Color maincontainercolor2;
  final String maintitle;
  final String middletitle;
  final String calcount;
  const Meals_container(
      {super.key,
      required this.semicirclecolor,
      required this.maincontainercolor2,
      required this.maincontainercolor1,
      required this.imagepath,
      required this.maintitle,
      required this.middletitle,
      required this.calcount});

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: screensize.width * 0.07),
            width: screensize.width * 0.34,
            height: screensize.width * 0.48,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  maincontainercolor1,
                  maincontainercolor2,
                ]),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(70),
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: screensize.width * 0.2,
                  height: screensize.width * 0.14,
                  decoration: BoxDecoration(
                      color: semicirclecolor,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(8),
                          bottomLeft: Radius.circular(90),
                          bottomRight: Radius.circular(100))),
                ),
                //texts
                Padding(
                  padding: EdgeInsets.only(left: screensize.width * 0.05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: screensize.width * 0.03,
                      ),
                      Text(
                        maintitle,
                        style: TextStyle(
                            color: constantwhite,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                      SizedBox(
                        height: screensize.width * 0.02,
                      ),
                      Text(
                        middletitle,
                        style: TextStyle(
                            color: constantwhite,
                            fontWeight: FontWeight.w600,
                            fontSize: 13),
                      ),
                      SizedBox(
                        height: screensize.width * 0.03,
                      ),
                      Row(
                        children: [
                          Text(
                            calcount,
                            style: TextStyle(
                                color: constantwhite,
                                fontWeight: FontWeight.w600,
                                fontSize: 24),
                          ),
                          SizedBox(
                            width: screensize.width * 0.017,
                          ),
                          Text(
                            'kcal',
                            style: TextStyle(
                                color: constantwhite,
                                fontWeight: FontWeight.w600,
                                fontSize: 13),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: screensize.width * 0.43,
            child: Container(
              width: screensize.width * 0.2,
              height: screensize.width * 0.16,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                      image: AssetImage(imagepath), fit: BoxFit.cover)),
            ),
          )
        ],
      ),
    );
  }
}
