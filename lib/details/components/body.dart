import 'package:donoaid/donate_proof/dontate_proof_screen.dart';
import 'package:flutter/material.dart';
import 'package:donoaid/components/default_button.dart';
import 'package:donoaid/models/Product.dart';
import 'package:donoaid/size_config.dart';

import 'product_description.dart';
import 'top_rounded_container.dart';
import 'product_images.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ProductImages(product: product), // dont change
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              ProductDescription(
                product: product,
              ),
              TopRoundedContainer(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: SizeConfig.screenWidth * 0.15,
                    right: SizeConfig.screenWidth * 0.15,
                    bottom: getProportionateScreenWidth(40),
                    top: getProportionateScreenWidth(15),
                  ),
                  child: DefaultButton(
                    text: "Donate",
                    press: () {
                      Navigator.pushNamed(context, DonateProofScreen.routeName, arguments: DonateCate(category: product.category));
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
