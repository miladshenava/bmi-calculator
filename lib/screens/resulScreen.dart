import 'package:flutter/material.dart';
import 'package:p_bmi_6/screens/homeScreen.dart';
import 'package:p_bmi_6/widget/custom_button.dart';
import 'package:p_bmi_6/widget/result_contaner.dart';
import '../const.dart';

class resultScreen extends StatefulWidget {
  final String status;
  final String bmi;
  final String tip;
  final Color statusColor;

  resultScreen(
      {required this.status,
        required this.bmi,
        required this.tip,
        required this.statusColor});

  @override
  _resultScreenState createState() => _resultScreenState();
}

class _resultScreenState extends State<resultScreen> {
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

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(

              'YOUR RESULT',
              style: kNumberStyle.copyWith(
                  fontSize: 40
              ),
            ),
            SizedBox(
              height: 20,
            ),
            resultContiner(
              status: widget.status,
              statusColor: widget.statusColor,
              bmi: widget.bmi,
              tip:widget.tip,
            ),
            SizedBox(
              height: 40,
            ),
            customButton('CALCULATE YOUR BMI', () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return homeScreen();
                  },
                ),
              );
            }),
          ],
        ),
      )
    );
  }
}
