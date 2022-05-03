import 'package:flutter/material.dart';
import 'package:flutterapp/fitapp/generatedonboarding2widget/generated/GeneratedGroupWidget232.dart';
import 'package:flutterapp/fitapp/generatedonboarding2widget/generated/GeneratedGroupWidget233.dart';

/* Group Group_button_obd32
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedGroup_button_obd32Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/GeneratedCFA_LoginWidget'),
      child: Container(
        width: 320.0,
        height: 50.0,
        child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            overflow: Overflow.visible,
            children: [
              Positioned(
                left: 0.0,
                top: 0.0,
                right: null,
                bottom: null,
                width: 320.0,
                height: 50.0,
                child: GeneratedGroupWidget232(),
              ),
              Positioned(
                left: 135.0,
                top: 13.0,
                right: null,
                bottom: null,
                width: 51.0,
                height: 25.0,
                child: GeneratedGroupWidget233(),
              )
            ]),
      ),
    );
  }
}