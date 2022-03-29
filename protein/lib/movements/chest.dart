import 'package:flutter/material.dart';
import 'package:protein/uitools/counter.dart';
import 'package:flutter/services.dart';

class ChestPage extends StatefulWidget {
  const ChestPage({Key? key}) : super(key: key);

  @override
  _ChestPageState createState() => _ChestPageState();
}

class _ChestPageState extends State<ChestPage> {
  static Widget rep = Row(
    children: [Text('Rep'), Counter()],
    mainAxisAlignment: MainAxisAlignment.start,
  );
  static Widget set = Row(
    children: [Text('Set'), Counter()],
    mainAxisAlignment: MainAxisAlignment.start,
  );
  static Widget weight = Row(
    children: [
      Text('Weight '),
      Container(
          width: 80,
          height: 40,
          child: TextField(
            inputFormatters: [
              LengthLimitingTextInputFormatter(5),
            ],
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: 'lbs'),
          ))
    ],
    mainAxisAlignment: MainAxisAlignment.start,
  );

  static Widget trainvol = Column(children: [rep, set, weight]);

  final Widget items = Column(
    children: [
      Row(children: [
        Expanded(
            child: Column(children: [
          Image.asset('assets/images/chestday/randommove.png'),
          Text('Flat Bench Press'),
          trainvol
        ])),
        Expanded(
            child: Column(children: [
          Image.asset('assets/images/chestday/randommove.png'),
          Text('Inclined Press'),
          trainvol
        ]))
      ]),
      Row(children: [
        Expanded(
            child: Column(children: [
          Image.asset('assets/images/chestday/randommove.png'),
          Text('Declined Press'),
          trainvol
        ])),
        Expanded(
            child: Column(children: [
          Image.asset('assets/images/chestday/randommove.png'),
          Text('Cable Pec flys'),
          trainvol
        ]))
      ]),
      Row(children: [
        Expanded(
            child: Column(children: [
          Image.asset('assets/images/chestday/randommove.png'),
          Text('Chest Dips'),
          trainvol
        ])),
        Expanded(
            child: Column(children: [
          Image.asset('assets/images/chestday/randommove.png'),
          Text('Dumbell Pullover'),
          trainvol
        ]))
      ]),
      Row(children: [
        Expanded(
            child: Column(children: [
          Image.asset('assets/images/chestday/randommove.png'),
          Text('Wide Pushups'),
          trainvol
        ])),
        Spacer() //append an empty item in the last row for alignment
      ]),
    ],
  );

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double adafont = screenSize.width > 350 ? 16 : 9;
    print(screenSize);
    return DefaultTextStyle(
        style: TextStyle(fontSize: adafont, color: Colors.black),
        child: Container(child: SingleChildScrollView(child: items)));
  }
}
