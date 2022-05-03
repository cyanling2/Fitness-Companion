import 'package:flutter/material.dart';
import 'package:flutterapp/fitapp/generatedcfa_runninghistorywidget/GeneratedCFA_RunningHistoryWidget.dart';
import 'package:flutterapp/fitapp/generatedcfa_runninghistorywidget2/GeneratedCFA_RunningHistoryWidget2.dart';
import 'package:flutterapp/fitapp/generatedbreakfastwidget1/GeneratedBreakfastWidget1.dart';
import 'package:flutterapp/fitapp/generatedarticlefullwidget/GeneratedArticlefullWidget.dart';
import 'package:flutterapp/fitapp/generatedarticlebodywidget/GeneratedArticlebodyWidget.dart';
import 'package:flutterapp/fitapp/generatedarticlearmwidget/GeneratedArticlearmWidget.dart';
import 'package:flutterapp/fitapp/generatedarticlefootwidget/GeneratedArticlefootWidget.dart';
import 'package:flutterapp/fitapp/generatedonboarding1widget/GeneratedOnboarding1Widget.dart';
import 'package:flutterapp/fitapp/generatedonboarding2widget/GeneratedOnboarding2Widget.dart';
import 'package:flutterapp/fitapp/generatedarticle_detailswidget/GeneratedArticle_detailsWidget.dart';
import 'package:flutterapp/fitapp/generatedcfa_register3widget/GeneratedCFA_register3Widget.dart';
import 'package:flutterapp/fitapp/generatedcfa_register2widget/GeneratedCFA_register2Widget.dart';
import 'package:flutterapp/fitapp/generatedcfa_runninghistoryeditwidget/GeneratedCFA_RunningHistoryeditWidget.dart';
import 'package:flutterapp/fitapp/generatedcfa_loginwidget/GeneratedCFA_LoginWidget.dart';
import 'package:flutterapp/fitapp/generatedcfa_loginwidget2/GeneratedCFA_LoginWidget2.dart';
import 'package:flutterapp/fitapp/generatedaddmealplanwidget/GeneratedAddmealplanWidget.dart';
import 'package:flutterapp/fitapp/generatedpremiummembershipwidget/GeneratedPremiumMembershipWidget.dart';
import 'package:flutterapp/fitapp/generatedcfaschedulewidget/GeneratedCFAScheduleWidget.dart';
import 'package:flutterapp/fitapp/generatedcfaschedulewidget2/GeneratedCFAScheduleWidget2.dart';
import 'package:flutterapp/fitapp/generatedcoverwidget1/GeneratedCoverWidget1.dart';

void main() {
  runApp(fitApp());
}

class fitApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/GeneratedOnboarding1Widget',
      routes: {
        '/GeneratedCFA_RunningHistoryWidget': (context) => GeneratedCFA_RunningHistoryWidget(),
        '/GeneratedCFA_RunningHistoryWidget2': (context) => GeneratedCFA_RunningHistoryWidget2(),
        '/GeneratedBreakfastWidget1': (context) => GeneratedBreakfastWidget1(),
        '/GeneratedArticlefullWidget': (context) => GeneratedArticlefullWidget(),
        '/GeneratedArticlebodyWidget': (context) => GeneratedArticlebodyWidget(),
        '/GeneratedArticlearmWidget': (context) => GeneratedArticlearmWidget(),
        '/GeneratedArticlefootWidget': (context) => GeneratedArticlefootWidget(),
        '/GeneratedOnboarding1Widget': (context) => GeneratedOnboarding1Widget(),
        '/GeneratedOnboarding2Widget': (context) => GeneratedOnboarding2Widget(),
        '/GeneratedArticle_detailsWidget': (context) => GeneratedArticle_detailsWidget(),
        '/GeneratedCFA_register3Widget': (context) => GeneratedCFA_register3Widget(),
        '/GeneratedCFA_register2Widget': (context) => GeneratedCFA_register2Widget(),
        '/GeneratedCFA_RunningHistoryeditWidget': (context) => GeneratedCFA_RunningHistoryeditWidget(),
        '/GeneratedCFA_LoginWidget': (context) => GeneratedCFA_LoginWidget(),
        '/GeneratedCFA_LoginWidget2': (context) => GeneratedCFA_LoginWidget2(),
        '/GeneratedAddmealplanWidget': (context) => GeneratedAddmealplanWidget(),
        '/GeneratedPremiumMembershipWidget': (context) => GeneratedPremiumMembershipWidget(),
        '/GeneratedCFAScheduleWidget': (context) => GeneratedCFAScheduleWidget(),
        '/GeneratedCFAScheduleWidget2': (context) => GeneratedCFAScheduleWidget2(),
        '/GeneratedCoverWidget1': (context) => GeneratedCoverWidget1(),
      },
    );
  }
}
