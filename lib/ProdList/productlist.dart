import 'package:flutter/material.dart';
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
    // final DeterCategory args =
    //     ModalRoute.of(context)!.settings.arguments as DeterCategory;
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(
          // prodCat: category,
          ),
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
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
        ),
        SizedBox(
          width: 85,
        ),
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

class DeterCategory {
  final String? category;

  DeterCategory({required this.category});

  List<Product> prods = demoProducts;

  List<Product> whtProd() {
    if (category == "Food") {
      prods = demoFood;
    } else if (category == "Money") {
      prods = demoMoney;
    }
    //  else if (category == "Electronic") {
    //   prods = electronics;
    // } else if (category == "Clothes") {
    //   prods = clothes;
    // }
    return prods;
  }
}
