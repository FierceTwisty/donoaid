import 'package:donoaid/ProdList/productlist.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class ProdCategories extends StatelessWidget {
  const ProdCategories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Text(
            "Categories",
            style: TextStyle(fontSize: 20, color: Colors.black87),
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        Container(
          height: getProportionateScreenWidth(200),
          width: getProportionateScreenWidth(double.infinity),
          child: GridView.count(
            scrollDirection: Axis.horizontal,
            crossAxisCount: 2,
            childAspectRatio: (1 / 1.85),
            crossAxisSpacing: 5,
            mainAxisSpacing: 3,
            children: [
              SpecialOfferCard(
                category: "Food",
                image: "assets/5.jpeg",
                press: () {
                  Navigator.pushNamed(context, ProductList.routeName,
                      arguments: DeterCategory(category: "Food"));
                },
              ),
              SpecialOfferCard(
                category: "Money",
                image: "assets/8.jpeg",
                press: () {
                  Navigator.pushNamed(context, ProductList.routeName,
                      arguments: DeterCategory(category: "Money"));
                },
              ),
              SpecialOfferCard(
                category: "Clothes",
                image: "assets/3.jpeg",
                press: () {
                  Navigator.pushNamed(context, ProductList.routeName,
                      arguments: DeterCategory(category: "Clothes"));
                },
              ),
              SpecialOfferCard(
                category: "Electronics",
                image: "assets/6.jpeg",
                press: () {
                  Navigator.pushNamed(
                    context,
                    ProductList.routeName,
                    arguments: DeterCategory(category: "Electronics"),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key? key,
    required this.category,
    required this.image,
    required this.press,
  }) : super(key: key);

  final String category, image;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF343434).withOpacity(0.4),
                        Color(0xFF343434).withOpacity(0.15),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15.0),
                    vertical: getProportionateScreenWidth(10),
                  ),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: "$category\n",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(18),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
