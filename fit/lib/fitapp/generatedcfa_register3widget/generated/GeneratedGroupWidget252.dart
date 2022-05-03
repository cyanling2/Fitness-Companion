import 'package:flutter/material.dart';
import 'package:flutterapp/fitapp/generatedcfa_register3widget/generated/GeneratedNextWidget.dart';
import 'package:flutterapp/helpers/transform/transform.dart';

/* Frame Group
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedGroupWidget252 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.zero,
      child: Container(
        width: 74.0,
        height: 25.0,
        child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            overflow: Overflow.visible,
            children: [
              Positioned(
                left: 0.0,
                top: null,
                right: 0.0,
                bottom: null,
                width: null,
                height: 30.0,
                child: TransformHelper.translate(
                    x: 0.00,
                    y: 2.50,
                    z: 0,
                    child: LayoutBuilder(builder:
                        (BuildContext context, BoxConstraints constraints) {
                      final double width =
                          constraints.maxWidth * 1.2165037619101036;

                      return Stack(children: [
                        TransformHelper.translate(
                            x: constraints.maxWidth * 0.008297871898960424,
                            y: 0,
                            z: 0,
                            child: Container(
                              width: width,
                              child: GeneratedNextWidget(),
                            ))
                      ]);
                    })),
              )
            ]),
      ),
    );
  }
}