import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:firebase_core/firebase_core.dart';
import '../pages/createprofile.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

class SignupWithEmailPwdPage extends StatefulWidget {
  SignupWithEmailPwdPage({Key? key}) : super(key: key);
  @override
  _SignupWithEmailPwdPageState createState() => _SignupWithEmailPwdPageState();
}

class _SignupWithEmailPwdPageState extends State<SignupWithEmailPwdPage> {
//4
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Create your account'),
        ),
        body: _RegisterEmailSection());
  }
}

class _RegisterEmailSection extends StatefulWidget {
  final String title = 'Registration';
  @override
  State<StatefulWidget> createState() => _RegisterEmailSectionState();
}

class _RegisterEmailSectionState extends State<_RegisterEmailSection> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool? _success;
  String? _userEmail;
  String? _errcode;
  // static String result='';
  void _register() async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      final User? user = credential.user;
      if (user != null) {
        setState(() {
          _success = true;
          _userEmail = user.email!;
        });
      } else {
        setState(() {
          _success = true;
        });
      }
    } on FirebaseAuthException catch (error) {
      setState(() {
        _success = false;
        _errcode = error.message;
      });
    }
    // _auth.signOut(); //disable automatic login when signing up
    if (_success!){
      Navigator.pop(context);
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => CreateProfile()));
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    String strr = 'Register your account';
    //TODO UI content here
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(
                  labelText: 'Email', hintText: 'Enter a valid email'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "This field can't be empty";
                }
                return null;
              },
            ),
            TextFormField(
              controller: _passwordController,
              decoration: const InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter at least 6 characters'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "This field can't be empty";
                }
                return null;
              },
            ),
            Container(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                alignment: Alignment.center,
                child: Column(children: [
                  ElevatedButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        _register();
                        
                      }
                    },
                    child: const Text('Sign Up'),
                  ),
                ])),
            Container(
              alignment: Alignment.center,
              child: Text(
                _success == null
                    ? ''
                    : (_success!
                        ? 'Successfully registered ' + _userEmail!
                        : 'Registration failed: ' + _errcode!),
                style: TextStyle(
                    color: _success != null && _success!
                        ? Colors.green[800]
                        : Colors.red[900]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
