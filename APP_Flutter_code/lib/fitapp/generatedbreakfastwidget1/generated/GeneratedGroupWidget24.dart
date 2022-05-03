import 'package:flutter/material.dart';
import 'package:flutterapp/fitapp/generatedbreakfastwidget1/generated/GeneratedFoodHistoryWidget.dart';
import 'package:flutterapp/fitapp/generatedbreakfastwidget1/generated/GeneratedShapeWidget33.dart';
import 'package:flutterapp/fitapp/generatedbreakfastwidget1/generated/GeneratedShapeWidget34.dart';

/* Group Group
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedGroupWidget24 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330.0,
      height: 245.0,
      child: Stack(fit: StackFit.expand, alignment: Alignment.center, overflow: Overflow.visible, children: [
        Positioned(
          left: 1.0,
          top: 40.0,
          right: null,
          bottom: null,
          width: 329.0,
          height: 50.0,
          child: GeneratedShapeWidget33(),
        ),
        Positioned(
          left: 0.0,
          top: 117.0,
          right: null,
          bottom: null,
          width: 329.0,
          height: 50.0,
          child: GeneratedShapeWidget34(),
        ),
        Positioned(
          left: 104.0,
          top: 0.0,
          right: null,
          bottom: null,
          width: 125.0,
          height: 27.0,
          child: GeneratedFoodHistoryWidget(),
        )
      ]),
    );
  }
}