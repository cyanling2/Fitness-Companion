import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => new _CounterState();
}

class _CounterState extends State<Counter> {
  int _itemCount = 0;
  void minus() {
    setState(() {
      if (_itemCount>0){
        _itemCount--;
      }
    });
  }
  void plus() {
    setState(() {
      if (_itemCount<99){
        _itemCount++;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double adasize=screenSize.width>350?24:14;
    return 
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
            IconButton(icon: Icon(Icons.remove, size:adasize),onPressed: minus),
            Text(_itemCount.toString()),
            IconButton(icon: Icon(Icons.add, size:adasize),onPressed: plus)
        ],
      );
  }
}
