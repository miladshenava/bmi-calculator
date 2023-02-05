import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../const.dart';

class customButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressd;


  customButton(this.text,this.onPressd);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: double.infinity,
      color: kpink,
      height: 60,
      onPressed: onPressd,
      child: Center(
        child: Text(
          text,
          style: kNumberStyle.copyWith(
            fontSize: 21
          ),
        ),
      ),
    );
  }
}
