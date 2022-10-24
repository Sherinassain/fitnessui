import 'package:fitnessui/pages/container/plans/ads_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constants.dart';

class Plans_page extends StatelessWidget {
  const Plans_page({super.key});

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
                blurRadius: 0.5, blurStyle: BlurStyle.outer, color: Colors.grey)
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
        Expanded(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: screensize.width * 0.65,
                        decoration: BoxDecoration(color: constantblack),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: screensize.width * 0.04,
                              ),
                              Text(
                                'Non-Stop Diwali\n Sale is Live',
                                style: TextStyle(
                                    color: constantwhite,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24),
                              ),
                              SizedBox(
                                height: screensize.width * 0.08,
                              ),
                              Text(
                                'Get Upto 52% OFF + 1 Month FREE',
                                style: TextStyle(
                                    color: constantwhite,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16),
                              ),
                              SizedBox(
                                height: screensize.width * 0.11,
                              ),
                              Container(
                                width: screensize.width * 0.47,
                                height: screensize.width * 0.1,
                                decoration: BoxDecoration(
                                    color: constantwhite,
                                    borderRadius: BorderRadius.circular(22)),
                                child: Center(
                                  child: Text(
                                    'START TRANSFORM',
                                    style: TextStyle(
                                        color: constantblack,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: screensize.width * 0.68,
                        top: screensize.width * 0.13,
                        child: Stack(
                          children: [
                            Container(
                              width: screensize.width * 0.3,
                              height: screensize.width * 0.5,
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://img.freepik.com/premium-vector/happy-diwali-with-realistic-oil-lamp-elegant-diya-gift-card-poster-banner-big-sale-background_10190-1153.jpg?w=2000'),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            Positioned(
                              left: screensize.width * 0.026,
                              child: Container(
                                width: screensize.width * 0.27,
                                height: screensize.width * 0.06,
                                decoration: BoxDecoration(
                                    color: Colors.purple,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Center(
                                  child: Text(
                                    'Expires in 7 hours',
                                    style: TextStyle(
                                        color: constantwhite,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: screensize.width * 0.03,
                        ),
                        Text(
                          'Recommended plans for\nShernas',
                          style: TextStyle(
                              color: constantblack,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                        SizedBox(
                          height: screensize.width * 0.03,
                        ),
                        Text(
                          'Based on your fitness goals',
                          style: TextStyle(
                              color: constantblack,
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: screensize.width * 0.05,
                        ),
                        //ads container
//1
                        Ads_container(
                            imagepath:
                                'https://www.mensjournal.com/wp-content/uploads/mf/the-truth-about-post-workout-nutrition-main.jpg?w=900&h=506&crop=1&quality=86&strip=all',
                            maintitle1: 'Smart Diet &',
                            maintitle2: 'Workout Plan',
                            maintitlecolor1: constantwhite,
                            maintitlecolor2: constantwhite,
                            subtitle: 'Starts at \$199 per month',
                            linemain:
                                'Our Ai Powered plan to help you gain 3 kgs',
                            icon1: Icons.call_to_action,
                            line1: 'Customizable Diet Plan',
                            icon2: Icons.run_circle,
                            line2: 'Customizable Workout Routine',
                            icon3: Icons.health_and_safety,
                            line3: 'Ria-Your ai Coach & Assistant',
                            buttoncolor: Colors.red,
                            buttontitle: 'EXPLORE SMART'),
                        //2
                        Ads_container(
                            imagepath:
                                'https://thumbnails.yayimages.com/1600/c/ec4/cec4c28.jpg',
                            maintitle1: 'Healthify',
                            maintitle2: 'Transform',
                            maintitlecolor1: constantwhite,
                            maintitlecolor2: Colors.orange,
                            subtitle: 'Starts at \$2500/m',
                            linemain:
                                'Pick your team of two coaches to help you',
                            icon1: Icons.food_bank,
                            line1: '2 Premiere Coaches',
                            icon2: Icons.domain_verification_sharp,
                            line2: 'HealthifyMe Smart Scale',
                            icon3: Icons.call,
                            line3: 'Unlimited Consultation Calls',
                            buttoncolor: Colors.orange,
                            buttontitle: 'KNOW MORE'),
                        //3
                        Ads_container(
                            imagepath:
                                'https://thumbs.dreamstime.com/b/artistic-fitness-17412834.jpg',
                            maintitle1: 'Healthify',
                            maintitle2: 'Pro',
                            maintitlecolor1: constantwhite,
                            maintitlecolor2: Colors.blue,
                            subtitle: 'Starts at \$3,333/m',
                            linemain:
                                'Get fit faster, more consistently and holistically',
                            icon1: Icons.security,
                            line1: '2 Pro Coaches',
                            icon2: Icons.punch_clock,
                            line2: '1 CGM every ^ months',
                            icon3: Icons.health_and_safety,
                            line3: 'HealthifyMe Smart Scale',
                            buttoncolor: Colors.blue,
                            buttontitle: 'KNOW MORE'),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    )));
  }
}
