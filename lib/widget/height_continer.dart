import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:p_bmi_6/const.dart';
import 'package:p_bmi_6/widget/bass_continer.dart';

class heighContiner extends StatelessWidget {
  final double height;
  final Function(double value) onChange;

  heighContiner(this.height,this.onChange);

  @override
  Widget build(BuildContext context) {
    return bassContiner(
      Column(
        children: [
          Text(
            'HEIGHT',
            style: kTextStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                height.toString().replaceFirst('.0', ''),
                style: kNumberStyle,
              ),
              Text(
                "Cm",
                style: kTextStyle.copyWith(
                  fontSize: 18,
                ),
              ),
            ],
          ),
          Slider(
            value: height,
            min: 40,
            max: 240,
            onChanged: onChange,
            activeColor: kpink,
            inactiveColor: Colors.white,

          )
        ],
      ),
    );
  }
}
