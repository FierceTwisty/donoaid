import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(
            title: "Categories",
            press: () {},
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        // SingleChildScrollView(
        //   scrollDirection: Axis.horizontal,
        //   child:
        Container(
          // color: Colors.red,
          height: getProportionateScreenWidth(200),
          width: getProportionateScreenWidth(double.infinity),
          child:
              GridView.count(
                  scrollDirection: Axis.horizontal,
                  crossAxisCount: 2,
                  childAspectRatio: (1/1.85),
                  crossAxisSpacing: 3,
                  mainAxisSpacing: 3,
                  children: [
                SpecialOfferCard(
                  category: "Food",
                  image: "assets/5.jpeg",
                  press: () {},
                ),
                SpecialOfferCard(
                  category: "Money",
                  image: "assets/8.jpeg",
                  press: () {
                    print("Money");
                  },
                ),
                SpecialOfferCard(
                  category: "Clothes",
                  image: "assets/3.jpeg",
                  press: () {},
                ),
                SpecialOfferCard(
                  category: "Electronics",
                  image: "assets/6.jpeg",
                  press: () {},
                ),
              ]
                  // List.generate(
                  //   categories.length,
                  //   (index) => categories[index],
                  // ),
                  ),
        ),
        // ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key? key,
    required this.category,
    required this.image,
    // required this.numOfBrands,
    required this.press,
  }) : super(key: key);

  final String category, image;
  // final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          // width: getProportionateScreenWidth(500),
          // height: getProportionateScreenWidth(100),
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
                        // TextSpan(text: "$numOfBrands Brands")
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
