import 'package:donoaid/models/Product.dart';
import 'package:flutter/material.dart';
import 'package:donoaid/components/product_card.dart';
import '../../../size_config.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PopularProducts extends StatelessWidget {
  final Stream<QuerySnapshot> cld =
      FirebaseFirestore.instance.collection("Popular").snapshots();

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
            child: Text(
              "Popular Charities",
            ),
          ),
          SizedBox(height: getProportionateScreenWidth(20)),
          StreamBuilder<QuerySnapshot>(
              stream: cld,
              builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasError) {
                  return Text("Something Went Wrong!");
                }
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (!snapshot.hasData) {
                  return Text("No popular charities");
                }
                final data = snapshot.requireData;
                return SizedBox(
                  height: getProportionateScreenHeight(200),
                  width: getProportionateScreenWidth(450),
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                      itemCount: data.size,
                      itemBuilder: (context, index) {
                        if (data.docs[index]["isPop"]) {
                          return ProductCard(
                            product: Product(
                              category: 'Food',
                              id: index,
                              images: data.docs[index]["images"],
                              title: data.docs[index]["title"],
                              description: data.docs[index]["description"],
                              rating: data.docs[index]["rate"],
                            ),
                          );
                        } else {
                          return Text("No popular charities");
                        }
                      }),
                );

              })
        ],
      );
  }
}



              // return SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child:
              // Row(
              //   children: [
              //     ...List.generate(
              //       data.size,
              //       (index) {
              //         if (data.docs[index]["isPop"])
              //           return ProductCard(
              //               product: Product(
              //             id: index,
              //             images: data.docs[index]["images"],
              //             title: data.docs[index]["title"],
              //             description: data.docs[index]["description"],
              //             rating: data.docs[index]["rate"],
              //           ));

              //         return SizedBox
              //             .shrink(); // here by default width and height is 0
              //       },
              //     ),
              //     SizedBox(width: getProportionateScreenWidth(20)),
              //   ],
              // ),

