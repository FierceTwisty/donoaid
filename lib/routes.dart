// import 'dart:js';

import 'package:donoaid/ProdList/productlist.dart';
import 'package:donoaid/home/home_screen.dart';
import 'package:donoaid/profile/profile_screen.dart';
import 'package:donoaid/sign_in/sign_in_screen.dart';
import 'package:donoaid/sign_up/complete_profile/complete_profile_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:donoaid/details/details_screen.dart';
import './sign_up/sign_up_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  ProductList.routeName: (context) => ProductList(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
};



// // import 'dart:js';
//
// import 'package:donoaid/home/home_screen.dart';
// import 'package:donoaid/sign_in/sign_in_screen.dart';
// import 'package:donoaid/sign_up/complete_profile/complete_profile_screen.dart';
// import 'package:flutter/widgets.dart';
// import './sign_up/sign_up_screen.dart';
//
// // We use name route
// // All our routes will be available here
// final Map<String, WidgetBuilder> routes = {
//   SignUpScreen.routeName: (context) => SignUpScreen(),
//   CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
//   SignInScreen.routeName: (context) => SignInScreen(),
//   HomeScreen.routeName: (context) => HomeScreen(),
//   // DetailsScreen.routeName: (context) => DetailsScreen(),
//   // CartScreen.routeName: (context) => CartScreen(),
//   // ProfileScreen.routeName: (context) => ProfileScreen(),
// };
