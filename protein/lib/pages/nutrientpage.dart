import 'package:flutter/material.dart';

class NutrientPage extends StatefulWidget {
  const NutrientPage({Key? key}) : super(key: key);

  @override
  _NutrientPageState createState() => _NutrientPageState();
}

class _NutrientPageState extends State<NutrientPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text("nutrient calculator...",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
    );
  }
}
