import 'package:flutter/material.dart';
import 'package:protein/logintools/SignupWithEmailPwd.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'SignupWithEmailPwd.dart';
import '../pages/homepage.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

class LoginWithEmailPwdPage extends StatefulWidget {
  @override
  _LoginWithEmailPwdPageState createState() => _LoginWithEmailPwdPageState();
}

class _LoginWithEmailPwdPageState extends State<LoginWithEmailPwdPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool? _success;
  String? _userEmail;
  String? _errcode;
  void _signin() async {
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      final User? user = credential.user;
      if (user != null) {
        setState(() {
          _success = true;
        _userEmail = user.email;
        });
        
      } else {}
    } on FirebaseAuthException catch (error) {
      setState(() {
        _success = false;
      _errcode = error.code;
      });
    }
    if (_success!=null && _success!){
      Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (_) => Homepage()));
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: Container(
        // height: screenSize.height,
        // width: screenSize.width,
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: Center(
                    child: Container(
                        width: 200,
                        height: 150,
                        /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                        child: Image.asset(
                            'assets/images/chestday/randommove.png')),
                  ),
                ),
                Text(
                  _success != null && _success == false
                      ? 'Invalid email or password'
                      : '',
                  style: TextStyle(color: Colors.red[900]),
                ),
                Padding(
                  //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                        hintText: 'Enter your email'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 15.0, top: 15, bottom: 0),
                  //padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        hintText: 'Enter your password'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    //TODO FORGOT PASSWORD SCREEN GOES HERE
                  },
                  child: const Text(
                    'Forgot Password ?',
                    style: TextStyle(color: Colors.blue, fontSize: 15),
                  ),
                ),
                Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)),
                  child: ElevatedButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        _signin();
                      }
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
                TextButton(
                  child: const Text(
                    'New User? Create Account',
                    style: TextStyle(color: Colors.black54, fontSize: 15),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => SignupWithEmailPwdPage()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
