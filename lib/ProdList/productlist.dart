import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:donoaid/constants.dart';
import 'package:donoaid/ProdList/components/body.dart';
import 'package:donoaid/models/Product.dart';

class ProductList extends StatelessWidget {
  static String routeName = "/ProdList";
  // final String? category;

  // ProductList({this.category});

  @override
  Widget build(BuildContext context) {
    final DeterCategory args =
        ModalRoute.of(context)!.settings.arguments as DeterCategory;

    // Widget getprod() async {
    //   await prodTry(args.category);

    //   return Body();
    // }

    return Scaffold(
      appBar: buildAppBar(),
      body: Body(category: args.category),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      actions: <Widget>[
        Center(
          child: Text(
            "Charities",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
        ),
        SizedBox(
          width: 150,
        ),

      ],
    );
  }
}

class DeterCategory {
  final String category;

  DeterCategory({required this.category});
}
