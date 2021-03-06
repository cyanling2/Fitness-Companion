import 'package:flutter/material.dart';
import 'package:flutterapp/helpers/transform/transform.dart';
import 'package:flutterapp/fitapp/generatedaddmealplanwidget/generated/GeneratedMin50Widget.dart';

/* Frame Group
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedGroupWidget371 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.zero,
      child: Container(
        width: 57.960052490234375,
        height: 13.75,
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
                height: 21.0,
                child: TransformHelper.translate(
                    x: 0.00,
                    y: 0.18,
                    z: 0,
                    child: LayoutBuilder(builder:
                        (BuildContext context, BoxConstraints constraints) {
                      final double width =
                          constraints.maxWidth * 1.3323789578435528;

                      return Stack(children: [
                        TransformHelper.translate(
                            x: constraints.maxWidth * 0.01029546106721917,
                            y: 0,
                            z: 0,
                            child: Container(
                              width: width,
                              child: GeneratedMin50Widget(),
                            ))
                      ]);
                    })),
              )
            ]),
      ),
    );
  }
}
