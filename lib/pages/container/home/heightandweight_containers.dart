import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Heightand_weight_container extends StatelessWidget {
  final String maintitle;
  final String subtitle;
  const Heightand_weight_container({super.key,required this.maintitle,required this.subtitle});

  get constantblack => null;

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Column(
      children: [
        Text(
          maintitle,
          style: TextStyle(
              color: constantblack, fontWeight: FontWeight.w600, fontSize: 18),
        ),
        SizedBox(
          height: screensize.width * 0.015,
        ),
        Text(
          subtitle,
          style: TextStyle(
              color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ],
    );
  }
}
