import 'package:flutter/material.dart';
import 'package:flutterapp/helpers/transform/transform.dart';
import 'package:flutterapp/fitapp/generatedarticle_detailswidget/generated/GeneratedIncididuntutlaboreWidget.dart';
import 'package:flutterapp/fitapp/generatedarticle_detailswidget/generated/GeneratedLoremipsumdolorsitametconsecteturWidget.dart';
import 'package:flutterapp/fitapp/generatedarticle_detailswidget/generated/GeneratedAdipiscingelitseddoeiusmodtemporWidget.dart';

/* Frame Group
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedGroupWidget234 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.zero,
      child: Container(
        width: 301.0,
        height: 64.0,
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
                height: 22.0,
                child: TransformHelper.translate(
                    x: 0.00,
                    y: -21.00,
                    z: 0,
                    child: LayoutBuilder(builder:
                        (BuildContext context, BoxConstraints constraints) {
                      final double width =
                          constraints.maxWidth * 1.0132890365448506;

                      return Stack(children: [
                        TransformHelper.translate(
                            x: 0,
                            y: 0,
                            z: 0,
                            child: Container(
                              width: width,
                              child:
                                  GeneratedLoremipsumdolorsitametconsecteturWidget(),
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
                height: 22.0,
                child: TransformHelper.translate(
                    x: 0.00,
                    y: 1.00,
                    z: 0,
                    child: LayoutBuilder(builder:
                        (BuildContext context, BoxConstraints constraints) {
                      final double width =
                          constraints.maxWidth * 0.9534883720930233;

                      return Stack(children: [
                        TransformHelper.translate(
                            x: 0,
                            y: 0,
                            z: 0,
                            child: Container(
                              width: width,
                              child:
                                  GeneratedAdipiscingelitseddoeiusmodtemporWidget(),
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
                height: 22.0,
                child: TransformHelper.translate(
                    x: 0.00,
                    y: 23.00,
                    z: 0,
                    child: LayoutBuilder(builder:
                        (BuildContext context, BoxConstraints constraints) {
                      final double width =
                          constraints.maxWidth * 0.48172757475083056;

                      return Stack(children: [
                        TransformHelper.translate(
                            x: 0,
                            y: 0,
                            z: 0,
                            child: Container(
                              width: width,
                              child: GeneratedIncididuntutlaboreWidget(),
                            ))
                      ]);
                    })),
              )
            ]),
      ),
    );
  }
}
