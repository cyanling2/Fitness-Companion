import 'package:flutter/material.dart';
import 'package:flutterapp/fitapp/generatedarticle_detailswidget/generated/GeneratedShapeWidget118.dart';
import 'package:flutterapp/fitapp/generatedarticle_detailswidget/generated/GeneratedShapeWidget117.dart';

/* Group Group
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedGroupWidget237 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/GeneratedArticlefullWidget'),
      child: Container(
        width: 24.0,
        height: 16.799999237060547,
        child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            overflow: Overflow.visible,
            children: [
              Positioned(
                left: 0.0,
                top: 8.0,
                right: null,
                bottom: null,
                width: 24.0,
                height: 3.0,
                child: GeneratedShapeWidget117(),
              ),
              Positioned(
                left: 0.0,
                top: 0.0,
                right: null,
                bottom: null,
                width: 10.833000183105469,
                height: 16.799999237060547,
                child: GeneratedShapeWidget118(),
              )
            ]),
      ),
    );
  }
}