import 'package:flutter/material.dart';
import 'package:donoaid/models/Product.dart';

import '../../../size_config.dart';
// import 'categories.dart';
import 'helpline.dart';
import 'home_header.dart';
import 'popular_charities.dart';
import 'prod_categories.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),

            HomeHeader(),

            SizedBox(height: getProportionateScreenWidth(10)),

            HelpLine(),

            SizedBox(height: getProportionateScreenWidth(30)),

            ProdCategories(),

            SizedBox(height: getProportionateScreenWidth(30)),

            PopularProducts(),

            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
