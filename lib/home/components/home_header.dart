import 'package:donoaid/profile/profile_screen.dart';
import 'package:flutter/material.dart';
//import 'package:donoaid/screens/cart/cart_screen.dart';

import '../../../size_config.dart';
// import 'icon_btn_with_counter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //SearchField(),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                ProfileScreen.routeName,
              );
            },
            icon: Icon(Icons.person),
          ),

          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
          )
          // IconButton(onPressed: () {}, icon: )
          // IconBtnWithCounter(
          //   svgSrc: "assets/icons/Bell.svg",
          //   numOfitem: 3,
          //   press: () {},
          // ),
        ],
      ),
    );
  }
}
