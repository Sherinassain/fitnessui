import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../constants.dart';

class Cal_protein_fat_container extends StatelessWidget {
  final String title;
  final String remaningnutrition;
  final double percentage;
  final Color percentagecolor;
  final Color backgroundcolor;
  const Cal_protein_fat_container(
      {super.key,
      required this.title,
      required this.percentage,
      required this.percentagecolor,
      required this.backgroundcolor,
      required this.remaningnutrition});

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: screensize.width * 0.02),
            child: Text(
              title,
              style: TextStyle(
                  color: constantblack,
                  fontWeight: FontWeight.w600,
                  fontSize: 18),
            ),
          ),
          SizedBox(
            height: screensize.width * 0.015,
          ),
          LinearPercentIndicator(
            width: screensize.width * 0.23,
            percent: percentage,
            backgroundColor: backgroundcolor,
            progressColor: percentagecolor,
          ),
          SizedBox(
            height: screensize.width * 0.015,
          ),
          Padding(
            padding: EdgeInsets.only(left: screensize.width * 0.02),
            child: Text(
              remaningnutrition,
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
