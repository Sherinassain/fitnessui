import 'package:fitnessui/pages/constants.dart';
import 'package:fitnessui/pages/container/home/for_item_containers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Home_page extends StatelessWidget {
  const Home_page({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
            child: ListView(
      scrollDirection: Axis.vertical,
      children: [
        Column(
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
                        'Today',
                        style: TextStyle(
                            color: constantblack,
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      ),
                      SizedBox(
                        width: screensize.width * 0.02,
                      ),
                      Icon(
                        Icons.arrow_drop_down_outlined,
                        color: constantblack,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.flash_on,
                        color: Color.fromARGB(255, 250, 226, 9),
                      ),
                      SizedBox(
                        width: screensize.width * 0.02,
                      ),
                      Text(
                        '1 DAY',
                        style: TextStyle(
                            color: constantblack,
                            fontWeight: FontWeight.w600,
                            fontSize: 17),
                      ),
                      SizedBox(
                        width: screensize.width * 0.04,
                      ),
                      Icon(
                        Icons.share,
                        color: constantblack,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    height: screensize.width * 0.23,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: constantblack),
                    child: Row(
                      children: [
                        Container(
                          height: screensize.width * 0.23,
                          width: screensize.width * 0.27,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://media.istockphoto.com/photos/slim-hispanic-girl-doing-lunges-with-dumbbells-at-home-empty-space-picture-id1210548146?k=20&m=1210548146&s=612x612&w=0&h=EC089GI0wzk76WlA225cX-0ZOJJx3QfMdK757QvRKTM='),
                                  fit: BoxFit.cover),
                              color: Colors.transparent,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                              )),
                        ),
                        SizedBox(
                          width: screensize.width * 0.08,
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: screensize.width * 0.04,
                                ),
                                Text(
                                  'Need a fitness coach who\nis always there for you?',
                                  maxLines: 2,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: constantwhite),
                                ),
                                SizedBox(
                                  height: screensize.width * 0.019,
                                ),
                                Text(
                                  'Try SMART Ai Coach Ria',
                                  maxLines: 2,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          width: screensize.width * 0.08,
                        ),
                        Icon(
                          Icons.arrow_circle_right_outlined,
                          color: constantwhite,
                        )
                      ],
                    ),
                  ),
                  //
                  SizedBox(
                    height: screensize.width * 0.09,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Lifestyle',
                        style: TextStyle(
                            color: constantblack,
                            fontWeight: FontWeight.w600,
                            fontSize: 19),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(right: screensize.width * 0.03),
                        child: Icon(
                          Icons.info,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screensize.width * 0.04,
                  ),
                  Container(
                    width: double.infinity,
                    height: screensize.width * 0.65,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        )),
                    child: Column(
                      children: [
                        Container(
                          height: screensize.width * 0.5,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 2,
                                    color: Colors.grey,
                                    blurStyle: BlurStyle.outer)
                              ],
                              borderRadius: BorderRadius.circular(20),
                              color: constantwhite),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: screensize.width * 0.06,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: screensize.width * 0.06),
                                  child: Text(
                                    'Nutrition',
                                    style: TextStyle(
                                        color: constantblack,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
                                  ),
                                ),
                                SizedBox(
                                  height: screensize.width * 0.05,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CircularPercentIndicator(
                                      radius: 35,
                                      center: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: CircleAvatar(
                                          radius: 30,
                                          backgroundColor: Colors.transparent,
                                          backgroundImage: NetworkImage(
                                              'https://cdn-icons-png.flaticon.com/128/709/709343.png'),
                                        ),
                                      ),
                                      backgroundColor:
                                          Color.fromARGB(255, 238, 235, 235),
                                    ),
                                    Text(
                                      'Eat upto 2,400 Cal',
                                      style: TextStyle(
                                          color: constantblack,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 19),
                                    ),
                                    Container(
                                      width: screensize.width * 0.094,
                                      height: screensize.width * 0.094,
                                      decoration: BoxDecoration(
                                          color: Colors.orange,
                                          shape: BoxShape.circle),
                                      child: Icon(
                                        Icons.add,
                                        color: constantwhite,
                                      ),
                                    )
                                  ],
                                ),
                                // Container(
                                //   width: double.infinity,
                                //   height: screensize.width * 0.11,
                                //   decoration: BoxDecoration(color: Colors.deepPurple),
                                // )
                                SizedBox(
                                  height: screensize.width * 0.03,
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
                                  height: screensize.width * 0.02,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.person,
                                      color: constantblack,
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: screensize.width * 0.02,
                                    ),
                                    Text(
                                      '44,639 users tracked food in last 24 hrs',
                                      style: TextStyle(
                                          color: Colors.black45,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 13),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: screensize.width * 0.04,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.alarm,
                              color: constantwhite,
                              size: 30,
                            ),
                            Text(
                              'Create Your Diet & Workout Plan',
                              style: TextStyle(
                                  color: Colors.black45,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13),
                            ),
                            Icon(
                              Icons.arrow_circle_right,
                              color: constantwhite,
                              size: 30,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screensize.width * 0.04,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          //1st
                          For_item_containers(
                              imagepath:
                                  'https://cdn-icons-png.flaticon.com/128/1869/1869315.png',
                              title: 'Burn at least',
                              subtitle: '483 Cal'),

                          //2

                          Container(
                            width: screensize.width * 0.4,
                            height: screensize.width * 0.4,
                            decoration: BoxDecoration(
                                color: constantwhite,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 1,
                                      blurStyle: BlurStyle.outer)
                                ]),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: screensize.width * 0.06,
                                ),
                                Container(
                                  width: screensize.width * 0.16,
                                  height: screensize.width * 0.16,
                                  decoration:
                                      BoxDecoration(color: Colors.transparent),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            width: screensize.width * 0.06,
                                            height: screensize.width * 0.06,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                        'https://cdn-icons-png.flaticon.com/128/929/929417.png'),
                                                    fit: BoxFit.cover),
                                                color: Colors.transparent),
                                          ),
                                          Container(
                                            width: screensize.width * 0.06,
                                            height: screensize.width * 0.06,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                        'https://cdn-icons-png.flaticon.com/128/1042/1042339.png'),
                                                    fit: BoxFit.cover),
                                                color: Colors.transparent),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: screensize.width * 0.01,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            width: screensize.width * 0.06,
                                            height: screensize.width * 0.06,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                        'https://cdn-icons-png.flaticon.com/128/3343/3343850.png'),
                                                    fit: BoxFit.cover),
                                                color: Colors.transparent),
                                          ),
                                          Container(
                                            width: screensize.width * 0.06,
                                            height: screensize.width * 0.06,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                        'https://cdn-icons-png.flaticon.com/128/2000/2000176.png'),
                                                    fit: BoxFit.cover),
                                                color: Colors.transparent),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: screensize.width * 0.02,
                                ),
                                Text(
                                  'Track your steps',
                                  style: TextStyle(
                                      color: constantblack,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18),
                                ),
                                SizedBox(
                                  height: screensize.width * 0.01,
                                ),
                                Text(
                                  'Connect now',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                          )
                        ],
                      ), //2ndroe 1st
                      SizedBox(
                        height: screensize.width * 0.06,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          //2nd row 1st
                          For_item_containers(
                              imagepath:
                                  'https://cdn-icons-png.flaticon.com/128/6142/6142606.png',
                              title: 'Drink 7 glasses',
                              subtitle: 'of water'),
                          //2nd row 2nd
                          For_item_containers(
                              imagepath:
                                  'https://cdn-icons-png.flaticon.com/128/7407/7407320.png',
                              title: 'Gain 3.0 kg',
                              subtitle: '0.0 of 3.0 kg gained'),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: screensize.width * 0.04,
                  ),
                  Container(
                    height: screensize.width * 0.16,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: constantwhite,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 2,
                              blurStyle: BlurStyle.outer)
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'View All Trackers',
                            style: TextStyle(
                                color: constantblack,
                                fontWeight: FontWeight.w600,
                                fontSize: 16),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(right: screensize.width * 0.03),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: constantblack,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //final container
          ],
        ),
      ],
    )));
  }
}
