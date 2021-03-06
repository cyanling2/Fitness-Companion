import 'package:flutter/material.dart';
import 'package:flutterapp/helpers/transform/transform.dart';
import 'package:flutterapp/fitapp/generatedcfa_loginwidget2/generated/GeneratedRegisterWidget3.dart';
import 'package:flutterapp/fitapp/generatedcfa_loginwidget2/generated/GeneratedGroupWidget359.dart';
import 'package:flutterapp/fitapp/generatedcfa_loginwidget2/generated/GeneratedCFA_LoginWidget3.dart';

/* Frame CFA_Login
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedCFA_LoginWidget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: ClipRRect(
      borderRadius: BorderRadius.zero,
      child: Container(
        width: 375.0,
        height: 812.0,
        child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            overflow: Overflow.visible,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.zero,
                child: Container(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              Positioned(
                left: 0.0,
                top: 0.0,
                right: null,
                bottom: null,
                width: 375.0,
                height: 812.0,
                child: GeneratedCFA_LoginWidget3(),
              ),
              Positioned(
                left: 0.0,
                top: 0.0,
                right: null,
                bottom: null,
                width: 320.0,
                height: 50.0,
                child: GeneratedGroupWidget359(),
              ),
              Positioned(
                left: 0.0,
                top: null,
                right: 0.0,
                bottom: null,
                width: null,
                height: 27.0,
                child: TransformHelper.translate(
                    x: 0.00,
                    y: -347.50,
                    z: 0,
                    child: LayoutBuilder(builder:
                        (BuildContext context, BoxConstraints constraints) {
                      final double width =
                          constraints.maxWidth * 0.44266666666666665;

                      return Stack(children: [
                        TransformHelper.translate(
                            x: constraints.maxWidth * 0.288,
                            y: 0,
                            z: 0,
                            child: Container(
                              width: width,
                              child: GeneratedRegisterWidget3(),
                            ))
                      ]);
                    })),
              )
            ]),
      ),
    ));
  }
}
