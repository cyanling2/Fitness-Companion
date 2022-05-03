import 'package:flutter/material.dart';
import 'package:flutterapp/helpers/transform/transform.dart';
import 'package:flutterapp/fitapp/generatedcfaschedulewidget/generated/Generated4Widget.dart';

/* Frame Group
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedGroupWidget480 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.30000001192092896,
      child: ClipRRect(
        borderRadius: BorderRadius.zero,
        child: Container(
          width: 12.0,
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
                            constraints.maxWidth * 1.4166666666666667;

                        return Stack(children: [
                          TransformHelper.translate(
                              x: 0,
                              y: 0,
                              z: 0,
                              child: Container(
                                width: width,
                                child: Generated4Widget(),
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
