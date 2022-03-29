import 'package:flutter/material.dart';
import 'package:protein/pages/homepage.dart';
import '../dbtools/firedbops.dart';
import 'package:firebase_auth/firebase_auth.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

class CreateProfile extends StatefulWidget {
  const CreateProfile({Key? key}) : super(key: key);

  @override
  _CreateProfileState createState() => _CreateProfileState();
}

class _CreateProfileState extends State<CreateProfile> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _curweightController = TextEditingController();
  final TextEditingController _idealweightController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _exerciseFreqController = TextEditingController();
  bool? _iserr;
  void saveprofile() {
    try {
      int age = int.parse(_ageController.text);
      int height = int.parse(_heightController.text);
      int curweight = int.parse(_curweightController.text);
      int idealweight = int.parse(_idealweightController.text);
      int exerciseFreq = int.parse(_exerciseFreqController.text);
      User? user = _auth.currentUser;
      if (user != null) {
        setUserProfile(user.uid, _usernameController.text, age, height, curweight, idealweight, exerciseFreq);
      }
      setState(() {
        _iserr = false;
      });
    } on FormatException catch (error) {
      setState(() {
        _iserr = true;
      });
    }
    if (_iserr!=null && _iserr==false){
      // Navigator.pop(context);
      Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (_) => Homepage()));
    }
  }

  @override
  void dispose() {
    _ageController.dispose();
    _heightController.dispose();
    _curweightController.dispose();
    _idealweightController.dispose();
    _usernameController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Personalize your profile')),
        body: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                    controller: _usernameController,
                    decoration: const InputDecoration(
                      labelText: 'Username',
                      hintText: 'Pick a user name for your account',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "This field can't be empty";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _ageController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Age',
                      hintText: 'Enter an integer between 0~99',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "This field can't be empty";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _heightController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Height',
                      hintText: 'Enter your height in CM as an integer',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "This field can't be empty";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _curweightController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Current Weight',
                      hintText: 'Enter your weight in KG as an integer',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "This field can't be empty";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _idealweightController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Ideal Weight',
                      hintText: 'Enter your target weight in KG as an integer',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "This field can't be empty";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: _exerciseFreqController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'How often do you exercise?',
                      hintText: 'Enter how many times you exercise per week',
                    ),
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
                              saveprofile();
                            }
                          },
                          child: const Text('Sign Up'),
                        ),
                      ])),
                  Container(
                      alignment: Alignment.center,
                      child: Text(
                        _iserr != null && _iserr!
                            ? 'Please enter a valid integer'
                            : '',
                        style: TextStyle(color: Colors.red[900]),
                      ))
                ],
              ),
            )));
  }
}
