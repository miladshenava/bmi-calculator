import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../const.dart';

class gender_contaner extends StatelessWidget {
  final IconData iconData;
  final String text;
  final bool isActiv;
  final VoidCallback onTapped;

  gender_contaner(

      {required this.iconData, required this.text, required this.isActiv,required this.onTapped});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        borderRadius: BorderRadius.circular(
          15,
        ),
        color: isActiv ? kactivCard : kcardColor,
        child: InkWell(

          onTap: onTapped,
            borderRadius: BorderRadius.circular(
              15,
            ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            
            child: Center(
              child: Column(
                children: [
                  Icon(
                    iconData,
                    size: 80,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    text,
                    style: TextStyle(
                      fontSize: 20,
                      color: isActiv ? Colors.white : Colors.grey[400],
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
