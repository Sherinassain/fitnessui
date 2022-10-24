import 'dart:math';

import 'package:fitnessui/pages/constants.dart';
import 'package:fitnessui/pages/container/home/burned_eatan_container.dart';
import 'package:fitnessui/pages/container/home/cal_protein_fat_container.dart';
import 'package:fitnessui/pages/container/home/heightandweight_containers.dart';
import 'package:fitnessui/pages/container/home/meals_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
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
                    Container(
                        width: double.infinity,
                        height: screensize.width * 0.59,
                        decoration: BoxDecoration(color: Colors.transparent),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            //1
                            Meals_container(
                                semicirclecolor:
                                    Color.fromARGB(255, 92, 167, 228),
                                maincontainercolor2:
                                    Color.fromARGB(255, 17, 123, 209),
                                maincontainercolor1:
                                    Color.fromARGB(255, 58, 157, 238),
                                imagepath: 'assets/breakfast.png',
                                maintitle: 'Breakfast',
                                middletitle: 'Bread\nPeanut butter\nApple',
                                calcount: '525'),
                            //2
                            Meals_container(
                                semicirclecolor:
                                    Color.fromARGB(255, 187, 96, 230),
                                maincontainercolor2:
                                    Color.fromARGB(255, 137, 67, 216),
                                maincontainercolor1:
                                    Color.fromARGB(255, 160, 50, 233),
                                imagepath: 'assets/snack.png',
                                maintitle: 'Snack',
                                middletitle: 'Recommend',
                                calcount: '800'),
                            //3
                            Meals_container(
                                semicirclecolor:
                                    Color.fromARGB(255, 126, 233, 131),
                                maincontainercolor2:
                                    Color.fromARGB(255, 76, 218, 123),
                                maincontainercolor1:
                                    Color.fromARGB(255, 96, 235, 61),
                                imagepath: 'assets/lunch.png',
                                maintitle: 'Lunch',
                                middletitle: 'Salmon,\nMixed veggies,\nAvocado',
                                calcount: '602'),
                            //4
                            Meals_container(
                                semicirclecolor:
                                    Color.fromARGB(255, 109, 129, 238),
                                maincontainercolor2:
                                    Color.fromARGB(255, 64, 91, 240),
                                maincontainercolor1:
                                    Color.fromARGB(255, 52, 68, 158),
                                imagepath: 'assets/dinner.png',
                                maintitle: 'Dinner',
                                middletitle: 'Recommend',
                                calcount: '703'),
                          ],
                        )),
                    SizedBox(
                      height: screensize.width * 0.025,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Body measurement',
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
                              'Today',
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
                    Container(
                      width: double.infinity,
                      height: screensize.width * 0.53,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 2,
                              color: Colors.grey,
                              blurStyle: BlurStyle.outer,
                            ),
                          ],
                          color: constantwhite,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(80),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: screensize.width * 0.07,
                            ),
                            Text(
                              'Weight',
                              style: TextStyle(
                                  color: constantblack,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 19),
                            ),
                            SizedBox(
                              height: screensize.width * 0.04,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      '206.8',
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 28),
                                    ),
                                    SizedBox(
                                      width: screensize.width * 0.03,
                                    ),
                                    Text(
                                      'lbs',
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.history,
                                          color: Colors.grey,
                                        ),
                                        SizedBox(
                                          width: screensize.width * 0.01,
                                        ),
                                        Text(
                                          'Today',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17),
                                        ),
                                        SizedBox(
                                          width: screensize.width * 0.01,
                                        ),
                                        Text(
                                          '8:26 AM',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      '  inBody SmartScale',
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: screensize.width * 0.03,
                            ),
                            Container(
                              width: screensize.width * 0.88,
                              height: screensize.width * 0.006,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(3),
                              ),
                            ),
                            SizedBox(
                              height: screensize.width * 0.05,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                //height and weight containers
                                Heightand_weight_container(
                                    maintitle: '185 cm', subtitle: 'Height'),
                                Heightand_weight_container(
                                    maintitle: '27.3 BMI',
                                    subtitle: 'Overweight'),
                                Heightand_weight_container(
                                    maintitle: '20%', subtitle: 'Body fat'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screensize.width * 0.06,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Water',
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
                              'Aqua SmartBottle',
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
                          width: double.infinity,
                          height: screensize.width * 0.565,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 2,
                                  color: Colors.grey,
                                  blurStyle: BlurStyle.outer,
                                ),
                              ],
                              color: constantwhite,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(80),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10))),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: screensize.width * 0.05,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          '2100',
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 28),
                                        ),
                                        SizedBox(
                                          width: screensize.width * 0.03,
                                        ),
                                        Text(
                                          'ml',
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 22),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: screensize.width * 0.02,
                                    ),
                                    Text(
                                      'of daily goal 3.5L',
                                      style: TextStyle(
                                          color: constantblack,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 19),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: screensize.width * 0.06,
                                ),
                                Container(
                                  width: screensize.width * 0.5,
                                  height: screensize.width * 0.006,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                ),
                                SizedBox(
                                  height: screensize.width * 0.08,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.history,
                                          color: Colors.grey,
                                        ),
                                        SizedBox(
                                          width: screensize.width * 0.01,
                                        ),
                                        Text(
                                          'Last drink',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17),
                                        ),
                                        SizedBox(
                                          width: screensize.width * 0.01,
                                        ),
                                        Text(
                                          '8:26 AM',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: screensize.width * 0.01,
                                    ),
                                    Row(
                                      children: [
                                        Transform.rotate(
                                          angle: 25 * pi / 180,
                                          child: Icon(
                                            Icons.notifications,
                                            color: Color.fromARGB(
                                                255, 213, 25, 219),
                                          ),
                                        ),
                                        SizedBox(
                                          width: screensize.width * 0.015,
                                        ),
                                        Text(
                                          'Your bottle is empty, refill\nit!',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 213, 25, 219),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: screensize.width * 0.72,
                          top: screensize.width * 0.14,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50)),
                            padding: const EdgeInsets.all(5),
                            height: 130,
                            width: 65,
                            child: LiquidLinearProgressIndicator(
                              borderRadius: 50,
                              backgroundColor: Colors.grey[200],
                              value: 0.5,
                              borderColor: Colors.white,
                              borderWidth: 0.1,
                              center: const Padding(
                                padding: EdgeInsets.only(top: 30.0),
                                child: Text(
                                  '60%',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              valueColor: const AlwaysStoppedAnimation(
                                  Color.fromARGB(255, 17, 55, 144)),
                              direction: Axis.vertical,
                            ),
                          ),
                        ),
                        Positioned(
                          left: screensize.width * 0.6,
                          top: screensize.width * 0.2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Material(
                                elevation: 10,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(100)),
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 30,
                                  width: 30,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                  child: const Icon(
                                    Icons.add,
                                    color: Color.fromARGB(255, 8, 69, 118),
                                    size: 20,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: screensize.width * 0.06,
                              ),
                              Material(
                                elevation: 10,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(100)),
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 30,
                                  width: 30,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                  child: const Icon(
                                    Icons.minimize_outlined,
                                    color: Color.fromARGB(255, 8, 69, 118),
                                    size: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        )));
  }
}
