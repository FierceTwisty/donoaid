import 'package:flutter/material.dart';
import 'package:donoaid/constants.dart';
import 'package:donoaid/models/Product.dart';
import 'package:donoaid/details/details_screen.dart';

// import 'categorries.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  Body(this.category);
  final String? category;
  @override
  Widget build(BuildContext context) {
    List<Product> prods = demoProducts;
    if (category == "Food") {
    } else if (category == "Money") {
    } else if (category == "Electronic") {
    } else if (category == "Clothes") {}
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "Chairty Help",
            //   style: Theme.of(context)
            //       .textTheme
            //       .headline5
            //       .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        // Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
                itemCount: demoProducts.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPaddin,
                  crossAxisSpacing: kDefaultPaddin,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ItemCard(
                      product: demoProducts[index],
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                              product: demoProducts[index],
                            ),
                          )),
                    )),
          ),
        ),
      ],
    );
  }
}
