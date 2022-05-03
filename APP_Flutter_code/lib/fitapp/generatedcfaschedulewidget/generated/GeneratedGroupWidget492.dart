import 'package:flutter/material.dart';
import 'package:flutterapp/fitapp/generatedcfaschedulewidget/generated/Generated6Widget1.dart';
import 'package:flutterapp/helpers/transform/transform.dart';

/* Frame Group
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedGroupWidget492 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.30000001192092896,
      child: ClipRRect(
        borderRadius: BorderRadius.zero,
        child: Container(
          width: 9.0,
          height: 20.0,
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
                  height: 25.0,
                  child: TransformHelper.translate(
                      x: 0.00,
                      y: 2.50,
                      z: 0,
                      child: LayoutBuilder(builder:
                          (BuildContext context, BoxConstraints constraints) {
                        final double width =
                            constraints.maxWidth * 1.5555555555555556;

                        return Stack(children: [
                          TransformHelper.translate(
                              x: 0,
                              y: 0,
                              z: 0,
                              child: Container(
                                width: width,
                                child: Generated6Widget1(),
                              ))
                        ]);
                      })),
                )
              ]),
        ),
      ),
    );
  }
}
