import 'package:flutter/material.dart';
import 'package:flutterapp/fitapp/generatedcfa_register3widget/generated/GeneratedSelectyourfitnesslevelWidget.dart';
import 'package:flutterapp/helpers/transform/transform.dart';

/* Frame Group
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedGroupWidget246 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.zero,
      child: Container(
        width: 276.0,
        height: 30.0,
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
                height: 32.0,
                child: TransformHelper.translate(
                    x: 0.00,
                    y: 1.00,
                    z: 0,
                    child: LayoutBuilder(builder:
                        (BuildContext context, BoxConstraints constraints) {
                      final double width =
                          constraints.maxWidth * 0.8804347826086957;

                      return Stack(children: [
                        TransformHelper.translate(
                            x: constraints.maxWidth * 0.0025217390578726063,
                            y: 0,
                            z: 0,
                            child: Container(
                              width: width,
                              child: GeneratedSelectyourfitnesslevelWidget(),
                            ))
                      ]);
                    })),
              )
            ]),
      ),
    );
  }
}
