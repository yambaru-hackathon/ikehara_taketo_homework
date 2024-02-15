import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AddPage extends StatelessWidget {
  AddPage({super.key});

  String first = '';
  String last = '';
  int? born;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            decoration: const InputDecoration(
              hintText: 'First',
            ),
            onChanged: (text) {
              first = text;
            },
          ),
          TextField(
            decoration: const InputDecoration(
              hintText: 'Last',
            ),
            onChanged: (text) {
              last = text;
            },
          ),
          TextField(
            decoration: const InputDecoration(
              hintText: 'born',
            ),
            onChanged: (text) {
              born = int.parse(text);
            },
          ),
          ElevatedButton(
            onPressed: () async {
              await _addToFirebase();
              // ignore: use_build_context_synchronously
              Navigator.pop(context);
            },
            child: const Text('追加する'),
          ),
        ],
      ),
    );
  }

  // ignore: unused_element
  Future _addToFirebase() async {
    final db = FirebaseFirestore.instance;
    // Create a new user with a first and last name
    final user = <String, dynamic>{"first": first, "last": last, "born": born};

// Add a new document with a generated ID
    await db.collection("users").add(user).then((DocumentReference doc) =>
        // ignore: avoid_print
        print('DocumentSnapshot added with ID: ${doc.id}'));
  }
}
