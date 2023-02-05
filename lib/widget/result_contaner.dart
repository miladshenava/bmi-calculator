import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:p_bmi_6/const.dart';
import 'package:p_bmi_6/widget/bass_continer.dart';

class resultContiner extends StatelessWidget {
  final String status;
  final String bmi;
  final String tip;
  final Color statusColor;

  resultContiner(
      {required this.status,
      required this.bmi,
      required this.tip,
      required this.statusColor});

  @override
  Widget build(BuildContext context) {
    return bassContiner(
      Column(
        children: [
          Text(status, style: kTextStyle),
          Text(
            bmi.substring(0,bmi.indexOf(('.'))+3),
            style: kNumberStyle.copyWith(fontSize: 110),
          ),
          Text(
            'normal BMI range',
            style: kTextStyle.copyWith(
              color: Colors.grey,
            ),
          ),
          Text(
            '18.5 - 25kg/m2',
            style: kTextStyle.copyWith(
              color: Colors.white,
            ),
          ),

          Text(bmi,style: kTextStyle.copyWith(color: Colors.white),)
        ],
      ),
    );
  }
}
