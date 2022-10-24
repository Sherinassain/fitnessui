import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../constants.dart';

class For_item_containers extends StatelessWidget {
  final String imagepath;
  final String title;
  final String subtitle;

  const For_item_containers(
      {super.key,
      required this.imagepath,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Container(
      width: screensize.width * 0.4,
      height: screensize.width * 0.4,
      decoration: BoxDecoration(
          color: constantwhite,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Colors.grey, blurRadius: 1, blurStyle: BlurStyle.outer)
          ]),
      child: Column(
        children: [
          SizedBox(
            height: screensize.width * 0.04,
          ),
          CircularPercentIndicator(
            radius: 35,
            center: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.transparent,
                backgroundImage: NetworkImage(imagepath),
              ),
            ),
            backgroundColor: Color.fromARGB(255, 238, 235, 235),
          ),
          SizedBox(
            height: screensize.width * 0.02,
          ),
          Text(
            title,
            style: TextStyle(
                color: constantblack,
                fontWeight: FontWeight.w600,
                fontSize: 18),
          ),
          SizedBox(
            height: screensize.width * 0.01,
          ),
          Text(
            subtitle,
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.w600, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
