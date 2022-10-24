import 'dart:math';

import 'package:fitnessui/pages/container/money/money_item_containers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constants.dart';

class Wallet_page extends StatelessWidget {
  const Wallet_page({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(8),
              width: double.infinity,
              height: screensize.width * 0.14,
              decoration: BoxDecoration(color: constantwhite, boxShadow: [
                BoxShadow(
                    blurRadius: 0.5,
                    blurStyle: BlurStyle.outer,
                    color: Colors.grey)
              ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.menu,
                        color: constantblack,
                      ),
                      SizedBox(
                        width: screensize.width * 0.1,
                      ),
                      Text(
                        'My Plans',
                        style: TextStyle(
                            color: constantblack,
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.headset_mic,
                        color: constantblack,
                      ),
                      SizedBox(
                        width: screensize.width * 0.02,
                      ),
                      Text(
                        'NEED HELP?',
                        style: TextStyle(
                            color: constantblack,
                            fontWeight: FontWeight.w600,
                            fontSize: 17),
                      ),
                      SizedBox(
                        width: screensize.width * 0.04,
                      ),
                      Icon(
                        Icons.more_vert,
                        color: constantblack,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: screensize.width * 0.76,
              decoration: BoxDecoration(color: Colors.transparent),
              child: Column(
                children: [
                  SizedBox(
                    height: screensize.width * 0.07,
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: screensize.width * 0.05),
                        width: screensize.width * 0.31,
                        height: screensize.width * 0.31,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 237, 241, 243),
                            shape: BoxShape.circle),
                      ),
                      Positioned(
                        left: screensize.width * 0.023,
                        bottom: screensize.width * 0.07,
                        child: Transform.rotate(
                          angle: -20 * pi / 180,
                          child: Container(
                            width: screensize.width * 0.27,
                            height: screensize.width * 0.27,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://cdn-icons-png.flaticon.com/128/1041/1041888.png'),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: screensize.width * 0.045,
                  ),
                  Text(
                    'Edition Wallet',
                    style: TextStyle(
                        color: constantblack,
                        fontWeight: FontWeight.w800,
                        fontSize: 27),
                  ),
                  SizedBox(
                    height: screensize.width * 0.03,
                  ),
                  Container(
                    width: screensize.width * 0.9,
                    decoration: BoxDecoration(color: Colors.transparent),
                    child: Column(
                      children: [
                        Text(
                          'Seamless one-click checkout for all payments',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                        Text(
                          'for this App',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: screensize.width * 0.15,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 66, 152, 223),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    'Activate Wallet',
                    style: TextStyle(
                        color: constantwhite,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screensize.width * 0.02,
            ),
            Container(
              width: double.infinity,
              height: screensize.width * 0.015,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(3),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  //items

                  SizedBox(
                    height: screensize.width * 0.04,
                  ),
                  //1st item
                  Money_item_containers(
                      imagepath:
                          'https://cdn-icons-png.flaticon.com/128/616/616494.png',
                      title: 'One-click checkout',
                      subtitle:
                          "No need to wait for OTP's-payments get\nprocessed instantly"),

                  SizedBox(
                    height: screensize.width * 0.05,
                  ),

                  Container(
                    width: double.infinity,
                    height: screensize.width * 0.003,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),

                  SizedBox(
                    height: screensize.width * 0.04,
                  ),
                  //2nd item
                  Money_item_containers(
                      imagepath:
                          'https://cdn-icons-png.flaticon.com/128/1161/1161388.png',
                      title: 'Safe and secure',
                      subtitle:
                          "Stay protected with bank-grade security\nwhile making payments"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
