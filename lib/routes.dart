// import 'dart:js';

import 'package:donoaid/sign_in/sign_in_screen.dart';
import 'package:donoaid/sign_up/complete_profile/complete_profile_screen.dart';
import 'package:flutter/widgets.dart';
import './sign_up/sign_up_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  SignInScreen.routeName: (context) => SignUpScreen(),
  // HomeScreen.routeName: (context) => HomeScreen(),
  // DetailsScreen.routeName: (context) => DetailsScreen(),
  // CartScreen.routeName: (context) => CartScreen(),
  // ProfileScreen.routeName: (context) => ProfileScreen(),
};
