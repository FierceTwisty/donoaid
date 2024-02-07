import 'package:donoaid/firebase/cld_storage.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:io';
import 'order_success.dart';

class Body extends StatefulWidget {
  final String category;
  Body({required this.category});

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    final Storage strg = Storage();
    final String pth = "";
    CollectionReference users = FirebaseFirestore.instance.collection('Users');

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
//image
          Container(child: Text("Donation Image Selection")),
//image bttn
          ElevatedButton(
            child: Text("Donation Image"),
            onPressed: () async {
              final results = await FilePicker.platform.pickFiles(
                allowMultiple: false,
                type: FileType.custom,
                allowedExtensions: ['png', 'jpg'],
              );

              if (results == null) {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('No file Selected')));
              } else {
                final path = results.files.single.path;

                final filename = results.files.single.name;

                CircularProgressIndicator(
                  color: Colors.amber[200],
                );

                await strg.uploadFile(path, filename);

                CircularProgressIndicator(
                  color: Colors.green,
                );

                final up = await strg.downloadUrl(filename);

                final upl = FirebaseAuth.instance.currentUser;
                users.doc(upl?.uid).collection('Orders').doc().set({
                  'image': up,
                  'category': widget.category,
                }).then(
                  (value) =>
                      Navigator.pushNamed(context, OrderSuccess.routeName),
                );
              }
            },
          )
//nxt bttn
        ],
      ),
    );
  }
}
