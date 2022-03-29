import 'package:flutter/material.dart';
import '../movements/chest.dart';
// import 'package:flutter/services.dart' show rootBundle;

// Future<String> loadAsset() async {
//   return await rootBundle.loadString('assets/config.json');
// }

class TrainingRecordPage extends StatefulWidget {
  const TrainingRecordPage({Key? key}) : super(key: key);

  @override
  _TrainingRecordPageState createState() => _TrainingRecordPageState();
}

class _TrainingRecordPageState extends State<TrainingRecordPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final List<Widget> moves = [
    // const ChestPage(),
    const Text("Bench Press......"),
    const Text(
      'Deadlift......',
      style: optionStyle,
    ),
    const Text(
      'Squat......',
      style: optionStyle,
    )
  ];

  void _onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(title: const Text('Record your training volume')),
        body: Row(children: <Widget>[
          NavigationRail(
              destinations: const <NavigationRailDestination>[
                NavigationRailDestination(
                    label: Text('Chest'),
                    icon: Icon(Icons.local_fire_department)),
                NavigationRailDestination(
                    label: Text('Back'),
                    icon: Icon(Icons.local_fire_department)),
                NavigationRailDestination(
                    label: Text('Leg'),
                    icon: Icon(Icons.local_fire_department)),
              ],
              labelType: NavigationRailLabelType.all,
              onDestinationSelected: _onTapped,
              selectedIndex: _selectedIndex),
          Expanded(child: moves.elementAt(_selectedIndex)
              // child: Image.asset('assets/images/chestday/randommove.png'),
              )
        ]));
  }
}
