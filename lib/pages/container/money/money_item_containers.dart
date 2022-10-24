import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../constants.dart';

class Money_item_containers extends StatelessWidget {
  final String imagepath;
  final String title;
  final String subtitle;

  const Money_item_containers(
      {super.key,

      required this.imagepath,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
            width: screensize.width * 0.14,
            height: screensize.width * 0.14,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  blurRadius: 2, color: Colors.grey, blurStyle: BlurStyle.outer)
            ], color: Colors.white54, shape: BoxShape.circle),
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.transparent,
                  backgroundImage: NetworkImage(imagepath),
                ))),
        SizedBox(
          width: screensize.width * 0.05,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: constantblack,
                  fontWeight: FontWeight.w600,
                  fontSize: 18),
            ),
            SizedBox(
              height: screensize.width * 0.015,
            ),
            Text(
              subtitle,
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                  fontSize: 14),
            ),
          ],
        )
      ],
    );
  }
}
