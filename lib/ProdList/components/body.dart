import 'package:donoaid/components/product_card.dart';
import 'package:flutter/material.dart';
import 'package:donoaid/constants.dart';
import 'package:donoaid/models/Product.dart';
// import 'package:donoaid/details/details_screen.dart';

// import 'categorries.dart';
// import 'item_card.dart';

class Body extends StatelessWidget {
  final String? prodCat;

  Body({this.prodCat});

  @override
  Widget build(BuildContext context) {
    // List<Product> prods = demoFood;

    // if (prodCat != null) {
    //   if (prodCat == "Food") {
    //     prods = demoFood;
    //   }
    //   if (prodCat == "Money") {
    //     prods = demoMoney;
    //   }
    // }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        ),
        // Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
                itemCount: demoFood.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPaddin,
                  crossAxisSpacing: kDefaultPaddin,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) =>
                    ProductCard(product: demoFood[index])),
          ),
        ),
      ],
    );
  }
}
