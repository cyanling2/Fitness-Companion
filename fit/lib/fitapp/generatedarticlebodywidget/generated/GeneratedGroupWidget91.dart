import 'package:flutter/material.dart';
import 'package:flutterapp/fitapp/generatedarticlebodywidget/generated/GeneratedPersonalizedworkoutswillhelpWidget3.dart';
import 'package:flutterapp/fitapp/generatedarticlebodywidget/generated/GeneratedYougainstrengthWidget3.dart';
import 'package:flutterapp/helpers/transform/transform.dart';

/* Frame Group
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedGroupWidget91 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.zero,
      child: Container(
        width: 206.0,
        height: 38.0,
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
                height: 20.0,
                child: TransformHelper.translate(
                    x: 0.00,
                    y: -9.00,
                    z: 0,
                    child: LayoutBuilder(builder:
                        (BuildContext context, BoxConstraints constraints) {
                      final double width =
                          constraints.maxWidth * 1.0048543689320388;

                      return Stack(children: [
                        TransformHelper.translate(
                            x: 0,
                            y: 0,
                            z: 0,
                            child: Container(
                              width: width,
                              child:
                                  GeneratedPersonalizedworkoutswillhelpWidget3(),
                            ))
                      ]);
                    })),
              ),
              Positioned(
                left: 0.0,
                top: null,
                right: 0.0,
                bottom: null,
                width: null,
                height: 20.0,
                child: TransformHelper.translate(
                    x: 0.00,
                    y: 11.00,
                    z: 0,
                    child: LayoutBuilder(builder:
                        (BuildContext context, BoxConstraints constraints) {
                      final double width =
                          constraints.maxWidth * 0.5776699029126213;

                      return Stack(children: [
                        TransformHelper.translate(
                            x: 0,
                            y: 0,
                            z: 0,
                            child: Container(
                              width: width,
                              child: GeneratedYougainstrengthWidget3(),
                            ))
                      ]);
                    })),
              )
            ]),
      ),
    );
  }
}
