import 'package:flutter/material.dart';
import 'package:protein/nutrient.dart';
import 'trainpage.dart';
import 'nutrientpage.dart';
import 'profilepage.dart';
import 'package:firebase_auth/firebase_auth.dart';


final FirebaseAuth _auth = FirebaseAuth.instance;

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;
  final List<Widget> pages = [
    const TrainingRecordPage(),
    // const NutrientPage(),
    DetailScreen("sandwich"),
    const ProfilePage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(child: pages.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Training',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.food_bank),
            label: 'Nutrients',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
