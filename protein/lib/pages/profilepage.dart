import 'dart:io';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../logintools/LoginWithEmailPwd.dart';
import '../rootpage.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final User? user = _auth.currentUser;
  DocumentSnapshot<Object?>? userdata;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white);

  bool _err = false;

  void getuserProfile(String uid) {
    CollectionReference users =
        FirebaseFirestore.instance.collection('protein_users');
    users.doc(uid).get().then((querySnapshot) {
      setState(() {
        userdata = querySnapshot;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    getuserProfile(user!.uid);
    double _height = 50;
    double _width = 200;
    return Container(
        child: Scaffold(
            appBar: AppBar(title: const Text('My profile')),
            body: Container(
              alignment: Alignment.topCenter,
              child: SingleChildScrollView(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      ' Username: ' +
                          (userdata == null ? '' : userdata!['username']),
                      style: optionStyle,
                    ),
                    height: _height,
                    width: _width,
                    // color: Colors.blue[400],
                    decoration: BoxDecoration(
                        color: Colors.blue[400],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      ' Age: ' +
                          (userdata == null ? '' : userdata!['age'].toString()),
                      style: optionStyle,
                    ),
                    height: _height,
                    width: _width,
                    decoration: BoxDecoration(
                        color: Colors.blue[400],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      ' Height(cm): ' +
                          (userdata == null
                              ? ''
                              : userdata!['height'].toString()),
                      style: optionStyle,
                    ),
                    height: _height,
                    width: _width,
                    decoration: BoxDecoration(
                        color: Colors.blue[400],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      ' Current Weight(kg): ' +
                          (userdata == null
                              ? ''
                              : userdata!['curweight'].toString()),
                      style: optionStyle,
                    ),
                    height: _height,
                    width: _width,
                    decoration: BoxDecoration(
                        color: Colors.blue[400],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      ' Ideal Weight(kg): ' +
                          (userdata == null
                              ? ''
                              : userdata!['idealweight'].toString()),
                      style: optionStyle,
                    ),
                    height: _height,
                    width: _width,
                    decoration: BoxDecoration(
                        color: Colors.blue[400],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      ' How many times I work out per week ' +
                          (userdata == null
                              ? ''
                              : userdata!['exerciseFreq'].toString()),
                      style: optionStyle,
                    ),
                    height: _height,
                    width: _width,
                    decoration: BoxDecoration(
                        color: Colors.blue[400],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                  ),
                  const SizedBox(
                    height: 130,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        _auth.signOut();
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (_) => LoginWithEmailPwdPage()));

                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('You have successfully signed out.'),
                        ));
                      },
                      child: Text('Sign out')),
                ],
              )),
            )));
  }
}
