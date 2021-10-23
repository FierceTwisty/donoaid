import 'package:donoaid/components/product_card.dart';
import 'package:flutter/material.dart';
import 'package:donoaid/constants.dart';
import 'package:donoaid/models/Product.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Body extends StatelessWidget {
  final String category;

  Body({required this.category});

  Stream<QuerySnapshot> cldProd() {
    final Stream<QuerySnapshot> cld = FirebaseFirestore.instance
        .collection("DonationCategories")
        .doc(category)
        .collection("Charity")
        .snapshots();

    return cld;
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: cldProd(),
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
          itemBuilder: (context, index) => ProductCard(
            product: Product(
              category: category,
              id: index,
              title: data.docs[index]['title'],
              description: data.docs[index]['description'],
              images: data.docs[index]['images'],
              rating: data.docs[index]['rate'],
            ),
          ),
        );
      },
    );
  }
}
