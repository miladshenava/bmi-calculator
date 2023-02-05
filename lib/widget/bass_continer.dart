import 'package:flutter/cupertino.dart';

import '../const.dart';

class bassContiner extends StatelessWidget {
  final Widget childeWidget;
  bassContiner(this.childeWidget);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 13,vertical: 20),

        decoration: BoxDecoration(
            color: kcardColor,
            borderRadius: BorderRadius.circular(
              15,
            )),
        child: Center(
          child: childeWidget
        ),
      ),
    );

  }
}
