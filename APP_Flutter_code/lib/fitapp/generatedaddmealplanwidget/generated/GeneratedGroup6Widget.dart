import 'package:flutter/material.dart';
import 'package:flutterapp/fitapp/generatedaddmealplanwidget/generated/GeneratedGroupWidget399.dart';
import 'package:flutterapp/helpers/transform/transform.dart';
import 'package:flutterapp/fitapp/generatedaddmealplanwidget/generated/GeneratedGroupWidget401.dart';
import 'package:flutterapp/fitapp/generatedaddmealplanwidget/generated/GeneratedIntermediateWidget8.dart';

/* Group Group 6
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedGroup6Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 321.5,
      height: 54.99997329711914,
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
              width: 321.5,
              height: 54.99997329711914,
              child: GeneratedGroupWidget399(),
            ),
            Positioned(
              left: 0.0,
              top: null,
              right: 0.0,
              bottom: null,
              width: null,
              height: 27.0,
              child: TransformHelper.translate(
                  x: 0.00,
                  y: 0.00,
                  z: 0,
                  child: LayoutBuilder(builder:
                      (BuildContext context, BoxConstraints constraints) {
                    final double width =
                        constraints.maxWidth * 0.37325038880248834;

                    return Stack(children: [
                      TransformHelper.translate(
                          x: constraints.maxWidth * 0.012441679626749611,
                          y: 0,
                          z: 0,
                          child: Container(
                            width: width,
                            child: GeneratedIntermediateWidget8(),
                          ))
                    ]);
                  })),
            ),
            Positioned(
              left: 233.0,
              top: 5.0,
              right: null,
              bottom: null,
              width: 77.0,
              height: 43.0,
              child: GeneratedGroupWidget401(),
            )
          ]),
    );
  }
}