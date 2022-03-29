import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:protein/pages/homepage.dart';
import 'logintools/LoginWithEmailPwd.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

class Rootpage extends StatefulWidget {
  const Rootpage({ Key? key }) : super(key: key);

  @override
  _RootpageState createState() => _RootpageState();
}

enum AuthStatus{
  notSignedIn,
  signedIn
}

class _RootpageState extends State<Rootpage> {
  AuthStatus _authStatus = AuthStatus.notSignedIn;
  @override
  void initState() {
    // TODO: implement initState
    User? user = _auth.currentUser;
    setState(() {
      _authStatus = user==null? AuthStatus.notSignedIn: AuthStatus.signedIn;
    });
  }
  @override
  Widget build(BuildContext context) {
    switch (_authStatus){
      case AuthStatus.notSignedIn:
          return LoginWithEmailPwdPage();
      case AuthStatus.signedIn:
          return const Homepage();
    }
  }
}