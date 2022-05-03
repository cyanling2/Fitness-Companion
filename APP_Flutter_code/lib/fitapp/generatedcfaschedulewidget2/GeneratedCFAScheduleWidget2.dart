import 'package:flutter/material.dart';
import 'package:flutterapp/fitapp/generatedcfaschedulewidget2/generated/GeneratedScheduleWidget1.dart';
import 'package:flutterapp/fitapp/generatedcfaschedulewidget2/generated/GeneratedGroupWidget612.dart';
import 'package:flutterapp/fitapp/generatedcfaschedulewidget2/generated/GeneratedCFAScheduleWidget3.dart';
import 'package:flutterapp/helpers/transform/transform.dart';

/* Frame CFA- Schedule
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedCFAScheduleWidget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: ClipRRect(
      borderRadius: BorderRadius.zero,
      child: Container(
        width: 375.0,
        height: 812.0,
        child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            overflow: Overflow.visible,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.zero,
                child: Container(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              Positioned(
                left: 0.0,
                top: 0.0,
                right: null,
                bottom: null,
                width: 375.0,
                height: 1118.0,
                child: GeneratedCFAScheduleWidget3(),
              ),
              Positioned(
                left: 0.0,
                top: null,
                right: 0.0,
                bottom: null,
                width: null,
                height: 30.0,
                child: TransformHelper.translate(
                    x: 0.00,
                    y: -359.00,
                    z: 0,
                    child: LayoutBuilder(builder:
                        (BuildContext context, BoxConstraints constraints) {
                      final double width = constraints.maxWidth * 0.248;

                      return Stack(children: [
                        TransformHelper.translate(
                            x: constraints.maxWidth * 0.392,
                            y: 0,
                            z: 0,
                            child: Container(
                              width: width,
                              child: GeneratedScheduleWidget1(),
                            ))
                      ]);
                    })),
              ),
              Positioned(
                left: 64.0,
                top: 37.0,
                right: null,
                bottom: null,
                width: 24.0,
                height: 16.799999237060547,
                child: GeneratedGroupWidget612(),
              )
            ]),
      ),
    ));
  }
}
