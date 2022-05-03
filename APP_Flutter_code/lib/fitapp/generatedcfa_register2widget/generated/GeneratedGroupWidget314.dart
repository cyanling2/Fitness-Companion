import 'package:flutter/material.dart';
import 'package:flutterapp/fitapp/generatedcfa_register2widget/generated/GeneratedStep3of3Widget1.dart';
import 'package:flutterapp/helpers/transform/transform.dart';

/* Frame Group
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedGroupWidget314 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.zero,
      child: Container(
        width: 104.0,
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
                height: 27.0,
                child: TransformHelper.translate(
                    x: 0.00,
                    y: 1.00,
                    z: 0,
                    child: LayoutBuilder(builder:
                        (BuildContext context, BoxConstraints constraints) {
                      final double width = constraints.maxWidth;

                      return Stack(children: [
                        TransformHelper.translate(
                            x: constraints.maxWidth * 0.007788461561386402,
                            y: 0,
                            z: 0,
                            child: Container(
                              width: width,
                              child: GeneratedStep3of3Widget1(),
                            ))
                      ]);
                    })),
              )
            ]),
      ),
    );
  }
}
