import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../constants.dart';

class Ads_container extends StatelessWidget {
  final String imagepath;
  final String maintitle1;
  final String maintitle2;
  final Color maintitlecolor1;
  final Color maintitlecolor2;
  final String subtitle;
  final String linemain;
  final IconData icon1;
  final String line1;
  final IconData icon2;
  final String line2;
  final IconData icon3;
  final String line3;
  final Color buttoncolor;
  final String buttontitle;

  const Ads_container(
      {super.key,
      required this.imagepath,
      required this.maintitle1,
      required this.maintitle2,
      required this.maintitlecolor1,
      required this.maintitlecolor2,
      required this.subtitle,
      required this.linemain,
      required this.icon1,
      required this.line1,
      required this.icon2,
      required this.line2,
      required this.icon3,
      required this.line3,
      required this.buttoncolor,
      required this.buttontitle});

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Container(
        width: double.infinity,
        height: screensize.height * 0.53,
        decoration: BoxDecoration(
            color: buttoncolor,
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
                            image: NetworkImage(imagepath), fit: BoxFit.cover)),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                maintitle1,
                                style: TextStyle(
                                    color: maintitlecolor1,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 26),
                              ),
                              Text(
                                maintitle2,
                                style: TextStyle(
                                    color: maintitlecolor2,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 26),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: screensize.width * 0.28,
                          ),
                          Text(
                            subtitle,
                            style: TextStyle(
                                color: constantwhite,
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screensize.width * 0.05,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      linemain,
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
                          icon1,
                          color: constantblack,
                        ),
                        SizedBox(
                          width: screensize.width * 0.04,
                        ),
                        Text(
                          line1,
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
                          icon2,
                          color: constantblack,
                        ),
                        SizedBox(
                          width: screensize.width * 0.04,
                        ),
                        Text(
                          line2,
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
                          icon3,
                          color: constantblack,
                        ),
                        SizedBox(
                          width: screensize.width * 0.04,
                        ),
                        Text(
                          line3,
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
                buttontitle,
                style: TextStyle(
                    color: constantwhite,
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
