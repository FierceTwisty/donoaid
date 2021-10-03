import 'package:flutter/material.dart';
import 'package:donoaid/components/rounded_icon_btn.dart';
import 'package:donoaid/models/Product.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class Counter extends StatelessWidget { // rename counter
  const Counter({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    // Now this is fixed and only for demo
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        children: [


          // implement counter
          Spacer(),
          RoundedIconBtn(
            icon: Icons.remove,
            press: () {},
          ),
          SizedBox(width: getProportionateScreenWidth(20)),
          RoundedIconBtn(
            icon: Icons.add,
            showShadow: true,
            press: () {},
          ),
        ],
      ),
    );
  }
}

