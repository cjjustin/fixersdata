import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<void> userProfile(String displayName, String gender) async {
  CollectionReference fixers = FirebaseFirestore.instance.collection('fixers');

  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  String uid = firebaseAuth.currentUser.uid.toString();
  fixers.add({'name': displayName, 'uid': uid, 'gender': gender});
  return;
}
