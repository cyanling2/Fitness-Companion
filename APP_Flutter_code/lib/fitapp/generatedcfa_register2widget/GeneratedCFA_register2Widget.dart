import 'package:flutter/material.dart';
import 'package:flutterapp/fitapp/generatedcfa_register2widget/generated/GeneratedCFA_PersonnalDetailsWidget.dart';
import 'package:flutterapp/fitapp/generatedcfa_register2widget/generated/GeneratedPersonnalDetailsWidget.dart';
import 'package:flutterapp/helpers/transform/transform.dart';
import 'package:flutterapp/fitapp/generatedcfa_register2widget/generated/GeneratedGroupWidget318.dart';

/* Frame CFA_register2
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedCFA_register2Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: ClipRRect(
      borderRadius: BorderRadius.zero,
      child: Container(
        width: 375.0,
        height: 812.0,
        child: Stack(fit: StackFit.expand, alignment: Alignment.center, overflow: Overflow.visible, children: [
          ClipRRect(
            borderRadius: BorderRadius.zero,
            child: Container(
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
          Positioned(
            left: 0.0,
            top: -6.0,
            right: null,
            bottom: null,
            width: 376.0,
            height: 818.0,
            child: GeneratedCFA_PersonnalDetailsWidget(),
          ),
          Positioned(
            left: 0.0,
            top: null,
            right: 0.0,
            bottom: null,
            width: null,
            height: 62.0,
            child: TransformHelper.translate(
                x: 0.00,
                y: -303.00,
                z: 0,
                child: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
                  final double width = constraints.maxWidth * 0.528;

                  return Stack(children: [
                    TransformHelper.translate(
                        x: constraints.maxWidth * 0.24533333333333332,
                        y: 0,
                        z: 0,
                        child: Container(
                          width: width,
                          child: GeneratedPersonnalDetailsWidget(),
                        ))
                  ]);
                })),
          ),
          Positioned(
            left: 26.0,
            top: 295.0,
            right: null,
            bottom: null,
            width: 317.0,
            height: 25.0,
            child: GeneratedGroupWidget318(),
          )
        ]),
      ),
    ));
  }
}
