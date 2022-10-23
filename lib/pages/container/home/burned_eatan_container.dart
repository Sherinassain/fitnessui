import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../constants.dart';

class Burned_eaten_container extends StatelessWidget {
  final String title;
  final String imagepath;
  final String calory;
  final color;
  const Burned_eaten_container(
      {super.key,
      required this.title,
      required this.imagepath,
      required this.calory,
      required this.color});

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(left: screensize.width * 0.08),
      child: Row(
        children: [
          Container(
            width: screensize.width * 0.006,
            height: screensize.width * 0.135,
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(3)),
          ),
          SizedBox(
            width: screensize.width * 0.03,
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(right: screensize.width * 0.145),
                child: Text(
                  title,
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
              ),
              SizedBox(
                height: screensize.width * 0.01,
              ),
              Row(
                children: [
                  Container(
                    width: screensize.width * 0.1,
                    height: screensize.width * 0.1,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(
                            image: AssetImage(imagepath), fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: screensize.width * 0.02,
                  ),
                  Text(
                    calory,
                    style: TextStyle(
                        color: constantblack,
                        fontWeight: FontWeight.w600,
                        fontSize: 17),
                  ),
                  SizedBox(
                    width: screensize.width * 0.02,
                  ),
                  Text(
                    'Kcal',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                ],
              ),
             
            ],
          )
        ],
      ),
    );
  }
}
