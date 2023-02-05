import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:p_bmi_6/screens/resulScreen.dart';

import 'package:p_bmi_6/widget/controler_contaner.dart';
import 'package:p_bmi_6/widget/gender_contaner.dart';
import 'package:p_bmi_6/widget/height_continer.dart';
import 'package:p_bmi_6/widget/custom_button.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  _homeScreenState createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  bool isMaleActiv = true;
  int age = 20, weight = 74;
  double height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 13,
        leading: Icon(
          Icons.clear_all,
          size: 30,
        ),
        title: Text(
          'BMI calculator',
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 1,
            ),
            Row(
              children: [
                gender_contaner(
                  iconData: FontAwesomeIcons.mars,
                  text: 'male',
                  isActiv: isMaleActiv,
                  onTapped: () {
                    setState(() {
                      isMaleActiv = false;
                    });
                  },
                ),
                SizedBox(
                  width: 15,
                ),
                gender_contaner(
                  iconData: FontAwesomeIcons.venus,
                  text: 'female',
                  isActiv: !isMaleActiv,
                  onTapped: () {
                    setState(() {
                      isMaleActiv = true;
                    });
                  },
                )
              ],
            ),
            Row(
              children: [
                heighContiner(
                  height,
                  (value) {
                    setState(() {
                      height = value.round() * 1.0;
                    });
                  },
                ),
              ],
            ),
            Row(
              children: [
                controler_contaner(
                  title: 'WHEGHT',
                  number: weight.toString(),
                  increase: () {
                    changeNumbers(isAgeChanging: false, isInCreasing: true);
                  },
                  decrease: () {
                    changeNumbers(isAgeChanging: false, isInCreasing: false);
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                controler_contaner(
                  title: 'AGE',
                  number: age.toString(),
                  decrease: () {
                    changeNumbers(isAgeChanging: true, isInCreasing: false);
                  },
                  increase: () {
                    changeNumbers(isAgeChanging: true, isInCreasing: true);
                  },
                ),
              ],
            ),
            customButton('CALCULATE YOUR BMI', () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    List result = bmiCalculator();
                    return resultScreen(
                      status: result[0],
                      bmi: result[1].toString(),
                      statusColor: result[2],
                      tip: result [3],
                    );
                  },
                ),
              );
            }),
          ],
        ),
      ),
    );
  }

  void changeNumbers(
      {required bool isAgeChanging, required bool isInCreasing}) {
    if (isAgeChanging) {
      setState(() {
        isInCreasing ? age++ : age--;
      });
    } else {
      setState(() {
        isInCreasing ? weight++ : weight--;
      });
    }
  }
 List bmiCalculator(){

    double bmi = 0;
    Color statusColor = Colors.green;
    String trip = '';
    String status;

    bmi = weight/pow((height/100),2);

    if(bmi >= 18.5 && bmi <= 25){
      status = 'NORMAL';
      statusColor = Colors.green;
      trip = 'you have a normal body weght  good job';
    }
    else if(bmi < 18.5){
      status = 'under weight';
      statusColor = Colors.red;
      trip = 'you have a low body weght.try to eat more';
    }
    else{
      status = 'over waight';

    }
    return [status,bmi,statusColor,trip];




  }
}
