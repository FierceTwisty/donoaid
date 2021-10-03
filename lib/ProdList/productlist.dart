import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:donoaid/constants.dart';
import 'package:donoaid/ProdList/components/body.dart';

class ProductList extends StatelessWidget {
  ProductList({this.category});
  final String? category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(category),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.shopping_cart),
          // By default our  icon color is white
          color: kTextColor,
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}
