import 'package:cloud_firestore/cloud_firestore.dart';

// FirebaseFirestore firestore = FirebaseFirestore.instance;

void setUserProfile(
    String uid, String username, int age, int height, int curweight, int idealweight, int exerciseFreq) {
  CollectionReference users =
      FirebaseFirestore.instance.collection('protein_users');
  users
      .doc(uid)
      .set({
        'username': username,
        'age': age,
        'height': height,
        'curweight': curweight,
        'idealweight': idealweight,
        'exerciseFreq': exerciseFreq,
      })
      .then((value) => print("User Added"))
      .catchError((error) => print("Failed to add user: $error"));
}
