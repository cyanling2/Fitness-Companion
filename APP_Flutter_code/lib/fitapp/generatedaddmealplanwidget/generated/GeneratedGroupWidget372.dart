import 'package:flutter/material.dart';
import 'package:flutterapp/fitapp/generatedaddmealplanwidget/generated/GeneratedMax156Widget.dart';
import 'package:flutterapp/helpers/transform/transform.dart';

/* Frame Group
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedGroupWidget372 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.zero,
      child: Container(
        width: 64.17005157470703,
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
                    y: 0.63,
                    z: 0,
                    child: LayoutBuilder(builder:
                        (BuildContext context, BoxConstraints constraints) {
                      final double width =
                          constraints.maxWidth * 1.120452907698192;

                      return Stack(children: [
                        TransformHelper.translate(
                            x: 0,
                            y: 0,
                            z: 0,
                            child: Container(
                              width: width,
                              child: GeneratedMax156Widget(),
                            ))
                      ]);
                    })),
              )
            ]),
      ),
    );
  }
}
