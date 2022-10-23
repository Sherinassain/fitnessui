import 'package:fitnessui/pages/constants.dart';
import 'package:fitnessui/pages/container/home/burned_eatan_container.dart';
import 'package:fitnessui/pages/container/home/cal_protein_fat_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Diary_page extends StatelessWidget {
  const Diary_page({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white38,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: screensize.width * 0.18,
                    decoration: BoxDecoration(color: Colors.transparent),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'My Diary',
                              style: TextStyle(
                                  color: constantblack,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_back_ios,
                              color: Colors.black54,
                            ),
                            SizedBox(
                              width: screensize.width * 0.03,
                            ),
                            Icon(
                              Icons.calendar_today,
                              color: Colors.black54,
                            ),
                            SizedBox(
                              width: screensize.width * 0.015,
                            ),
                            Text(
                              '1 5 May',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18),
                            ),
                            SizedBox(
                              width: screensize.width * 0.03,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black54,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screensize.width * 0.025,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Mediterranean diet',
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w600,
                                fontSize: 22),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Details',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w600,
                                fontSize: 18),
                          ),
                          SizedBox(
                            width: screensize.width * 0.01,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.black54,
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screensize.width * 0.07,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: screensize.width * 0.74,
                        width: screensize.width * 0.9,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 2,
                                color: Colors.grey,
                                blurStyle: BlurStyle.outer,
                              )
                            ],
                            color: constantwhite,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(85),
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            )),
                        child: Column(
                          children: [
                            SizedBox(
                              height: screensize.width * 0.05,
                            ),
                            //eaten burned containers
                            Burned_eaten_container(
                                title: 'Eaten',
                                imagepath: 'assets/eaten.png',
                                calory: '1127',
                                color: Colors.lightBlue),
                            SizedBox(
                              height: screensize.width * 0.07,
                            ),
                            Burned_eaten_container(
                                title: 'Burned',
                                imagepath: 'assets/burned.png',
                                calory: '102',
                                color: Color.fromARGB(255, 117, 31, 156)),
                            SizedBox(
                              height: screensize.width * 0.05,
                            ),
                            Container(
                              width: screensize.width * 0.735,
                              height: screensize.width * 0.006,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(3),
                              ),
                            ),
                            SizedBox(
                              height: screensize.width * 0.05,
                            ),
                            // cal ,protien ,fat containers
                            Container(
                              height: screensize.width * 0.15,
                              width: double.infinity,
                              decoration:
                                  BoxDecoration(color: Colors.transparent),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  //1
                                  Cal_protein_fat_container(
                                      title: 'Carbs',
                                      percentage: 0.7,
                                      percentagecolor:
                                          Color.fromARGB(255, 61, 144, 212),
                                      backgroundcolor:
                                          Color.fromARGB(255, 141, 192, 235),
                                      remaningnutrition: '12g left'),
                                  //2
                                  Cal_protein_fat_container(
                                      title: 'Protein',
                                      percentage: 0.5,
                                      percentagecolor:
                                          Color.fromARGB(255, 130, 57, 190),
                                      backgroundcolor:
                                          Color.fromARGB(255, 192, 149, 218),
                                      remaningnutrition: '12g left'),
                                  //3
                                  Cal_protein_fat_container(
                                      title: 'Fat',
                                      percentage: 0.3,
                                      percentagecolor:
                                          Color.fromARGB(255, 150, 138, 31),
                                      backgroundcolor:
                                          Color.fromARGB(255, 226, 241, 8),
                                      remaningnutrition: '12g left'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: screensize.width * 0.52,
                        top: screensize.width * 0.1,
                        child: CircularPercentIndicator(
                          radius: 65,
                          lineWidth: 11,
                          percent: 0.4,
                          center: Padding(
                            padding:
                                EdgeInsets.only(top: screensize.width * 0.07),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '1503',
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Color.fromARGB(255, 10, 27, 180),
                                      fontWeight: FontWeight.w600),
                                ),
                                Text('Kcal left',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600)),
                              ],
                            ),
                          ),
                          progressColor: Color.fromARGB(255, 48, 67, 236),
                          backgroundWidth: 5,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: screensize.width * 0.05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Meals today',
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w600,
                                fontSize: 22),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Customize',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w600,
                                fontSize: 18),
                          ),
                          SizedBox(
                            width: screensize.width * 0.01,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screensize.width * 0.04,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: screensize.width * 0.05),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Container(
                              margin:
                                  EdgeInsets.only(top: screensize.width * 0.07),
                              width: screensize.width * 0.34,
                              height: screensize.width * 0.48,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                    Color.fromARGB(255, 15, 133, 230),
                                    Color.fromARGB(255, 2, 50, 88)
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
                                        color:
                                            Color.fromARGB(255, 84, 166, 233),
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20),
                                            topLeft: Radius.circular(8),
                                            bottomLeft: Radius.circular(90),
                                            bottomRight: Radius.circular(100))),
                                  ),
                                  //texts
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: screensize.width * 0.05),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: screensize.width * 0.03,
                                        ),
                                        Text(
                                          'Breakfast',
                                          style: TextStyle(
                                              color: constantwhite,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18),
                                        ),
                                        SizedBox(
                                          height: screensize.width * 0.02,
                                        ),
                                        Text(
                                          'Bread\nPeanut butter\nApple',
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
                                              '525',
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
                              bottom: screensize.width * 0.39,
                              child: Container(
                                width: screensize.width * 0.2,
                                height: screensize.width * 0.16,
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    image: DecorationImage(
                                        image:
                                            AssetImage('assets/breakfast.png'),
                                        fit: BoxFit.cover)),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        )));
  }
}
