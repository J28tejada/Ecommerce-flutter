import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FirestoreScreen extends StatelessWidget {
  FirestoreScreen({super.key});

  var db = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    // Create a new user with a first and last name
    final user = <String, dynamic>{
      "first": "Ada",
      "last": "Lovelace",
      "born": 1815,
    };

    // Add a new document with a generated ID
    db
        .collection("users")
        .add(user)
        .then(
          (DocumentReference doc) =>
              print('DocumentSnapshot added with ID: ${doc.id}'),
        );

    return Scaffold(
      appBar: AppBar(title: Text('Firestone Datebase')),
      body: Text('Firestone example'),
    );
  }
}
