import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:p_bmi_6/widget/CircleButten.dart';
import 'package:p_bmi_6/widget/bass_continer.dart';

import '../const.dart';

class controler_contaner extends StatelessWidget {
  final String title;
  final String number;
  final VoidCallback increase;
  final VoidCallback decrease;

  controler_contaner({required this.title, required this.number,required this.increase,required this.decrease});

  @override
  Widget build(BuildContext context) {
    return bassContiner(
      Column(
        children: [
          Text(
            title,
            style: kTextStyle,
          ),
          Text(
            number,
            style: TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.bold,
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              CircleButten(
                icondata: FontAwesomeIcons.minus,
                onPress: decrease,
              ),
              SizedBox(width: 10,),
              CircleButten(
                icondata: FontAwesomeIcons.plus,
                onPress: increase,
              ),




            ],
          ),
        ],),
    );

  }
}
