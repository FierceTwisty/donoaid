import 'package:flutter/material.dart';

import '../models/Product.dart';
import 'body.dart';
import 'custom_app_bar.dart';

class DonateProofScreen extends StatelessWidget {
  static String routeName = "/donproof";

  @override
  Widget build(BuildContext context) {
    final DonateCate agrs =
        ModalRoute.of(context)!.settings.arguments as DonateCate;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      actions: <Widget>[
        Center(
          child: Text(
            "Donation Images",
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
    ),
      body: Body(
        category: agrs.category,
      ),
    );
  }
}

class DonateCate {
  final String category;

  DonateCate({required this.category});
}
