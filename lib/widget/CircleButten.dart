import 'package:flutter/material.dart';
import 'package:p_bmi_6/const.dart';

class CircleButten extends StatelessWidget {
  final IconData icondata;
  final VoidCallback onPress;
  CircleButten({required this.icondata,required this.onPress});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 60,
      minWidth: 60,
      onPressed: onPress,
      shape: CircleBorder(),
      color: kactivCard,
      child:
         Icon(icondata,size: 30,),


    );
  }
}
