import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:donoaid/constants.dart';

class Donations extends StatelessWidget {
  const Donations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance
          .collection("Users")
          .doc(FirebaseAuth.instance.currentUser?.uid)
          .collection('Orders')
          .snapshots(),
      builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text("Something Went Wrong");
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (!snapshot.hasData) {
          return Text("No Charities Left");
        }
        final data = snapshot.requireData;

        return GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          itemCount: data.size,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: kDefaultPaddin,
            crossAxisSpacing: kDefaultPaddin,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context, index) => Container(
            decoration: BoxDecoration(
              color: Color(
                0xFFF5F6F9,
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                SizedBox(width: 20),
                Expanded(
                  child: Text(
                    data.docs[index]['category'],
                    style: TextStyle(fontSize: 19, color: Color(0xFF29B6F6)),
                  ),
                ),
                Container(
                  child: Image.network(data.docs[index]['image']),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
