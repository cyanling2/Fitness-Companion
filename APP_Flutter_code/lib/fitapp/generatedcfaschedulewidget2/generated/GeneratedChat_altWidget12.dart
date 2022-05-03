import 'package:flutter/material.dart';
import 'package:flutterapp/fitapp/generatedcfaschedulewidget2/generated/GeneratedVector7Widget12.dart';
import 'package:flutterapp/fitapp/generatedcfaschedulewidget2/generated/GeneratedVector8Widget12.dart';
import 'package:flutterapp/helpers/transform/transform.dart';
import 'package:flutterapp/fitapp/generatedcfaschedulewidget2/generated/GeneratedRectangle1Widget23.dart';

/* Instance Chat_alt
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedChat_altWidget12 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/GeneratedArticlefullWidget'),
      child: Container(
        width: 26.0,
        height: 26.0,
        child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            overflow: Overflow.visible,
            children: [
              Positioned(
                left: 0.0,
                top: 0.0,
                right: 0.0,
                bottom: 0.0,
                width: null,
                height: null,
                child: LayoutBuilder(builder:
                    (BuildContext context, BoxConstraints constraints) {
                  double percentWidth = 0.6666666911198542;
                  double scaleX =
                      (constraints.maxWidth * percentWidth) / 17.33333396911621;

                  double percentHeight = 0.6666666911198542;
                  double scaleY = (constraints.maxHeight * percentHeight) /
                      17.33333396911621;

                  return Stack(children: [
                    TransformHelper.translateAndScale(
                        translateX: constraints.maxWidth * 0.16666667277996355,
                        translateY: constraints.maxHeight * 0.16666667277996355,
                        translateZ: 0,
                        scaleX: scaleX,
                        scaleY: scaleY,
                        scaleZ: 1,
                        child: GeneratedRectangle1Widget23())
                  ]);
                }),
              ),
              Positioned(
                left: 0.0,
                top: 0.0,
                right: 0.0,
                bottom: 0.0,
                width: null,
                height: null,
                child: LayoutBuilder(builder:
                    (BuildContext context, BoxConstraints constraints) {
                  double percentWidth = 0.25;
                  double scaleX = (constraints.maxWidth * percentWidth) / 6.5;

                  return Stack(children: [
                    TransformHelper.translateAndScale(
                        translateX: constraints.maxWidth * 0.375,
                        translateY: constraints.maxHeight * 0.4166666544400729,
                        translateZ: 0,
                        scaleX: scaleX,
                        scaleY: 1,
                        scaleZ: 1,
                        child: GeneratedVector7Widget12())
                  ]);
                }),
              ),
              Positioned(
                left: 0.0,
                top: 0.0,
                right: 0.0,
                bottom: 0.0,
                width: null,
                height: null,
                child: LayoutBuilder(builder:
                    (BuildContext context, BoxConstraints constraints) {
                  double percentWidth = 0.125;
                  double scaleX = (constraints.maxWidth * percentWidth) / 3.25;

                  return Stack(children: [
                    TransformHelper.translateAndScale(
                        translateX: constraints.maxWidth * 0.375,
                        translateY: constraints.maxHeight * 0.5833333455599271,
                        translateZ: 0,
                        scaleX: scaleX,
                        scaleY: 1,
                        scaleZ: 1,
                        child: GeneratedVector8Widget12())
                  ]);
                }),
              )
            ]),
      ),
    );
  }
}
