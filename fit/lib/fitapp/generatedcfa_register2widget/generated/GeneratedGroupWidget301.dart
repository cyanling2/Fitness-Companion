import 'package:flutter/material.dart';
import 'package:flutterapp/fitapp/generatedcfa_register2widget/generated/GeneratedResultGetfitwithyourpersonalworkoutWidget.dart';
import 'package:flutterapp/fitapp/generatedcfa_register2widget/generated/GeneratedPlanWidget.dart';
import 'package:flutterapp/fitapp/generatedcfa_register2widget/generated/GeneratedLetusknowaboutyoutospeeduptheWidget.dart';
import 'package:flutterapp/helpers/transform/transform.dart';

/* Frame Group
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedGroupWidget301 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.zero,
      child: Container(
        width: 299.0,
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
                          constraints.maxWidth * 0.9698996655518395;

                      return Stack(children: [
                        TransformHelper.translate(
                            x: constraints.maxWidth * 0.021311037516514194,
                            y: 0,
                            z: 0,
                            child: Container(
                              width: width,
                              child:
                                  GeneratedLetusknowaboutyoutospeeduptheWidget(),
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
                          constraints.maxWidth * 1.0033444816053512;

                      return Stack(children: [
                        TransformHelper.translate(
                            x: constraints.maxWidth * 0.002314381176811397,
                            y: 0,
                            z: 0,
                            child: Container(
                              width: width,
                              child:
                                  GeneratedResultGetfitwithyourpersonalworkoutWidget(),
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
                height: 25.0,
                child: TransformHelper.translate(
                    x: 0.00,
                    y: 24.50,
                    z: 0,
                    child: LayoutBuilder(builder:
                        (BuildContext context, BoxConstraints constraints) {
                      final double width =
                          constraints.maxWidth * 0.13712374581939799;

                      return Stack(children: [
                        TransformHelper.translate(
                            x: constraints.maxWidth * 0.4412173778317046,
                            y: 0,
                            z: 0,
                            child: Container(
                              width: width,
                              child: GeneratedPlanWidget(),
                            ))
                      ]);
                    })),
              )
            ]),
      ),
    );
  }
}
