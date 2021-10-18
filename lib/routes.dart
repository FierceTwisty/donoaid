import 'package:donoaid/ProdList/productlist.dart';
import 'package:donoaid/home/home_screen.dart';
import 'package:donoaid/profile/profile_screen.dart';
import 'package:donoaid/sign_in/sign_in_screen.dart';
import 'package:donoaid/sign_up/complete_profile/complete_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:donoaid/details/details_screen.dart';
import './sign_up/sign_up_screen.dart';
import 'package:provider/provider.dart';
import 'firebase/user_model.dart';
import 'firebase/auth_frb.dart';
// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  '/': (context) => AuthWrap(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  ProductList.routeName: (context) => ProductList(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
};

class AuthWrap extends StatelessWidget {
  const AuthWrap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthServ>(context);

    return StreamBuilder<UserMod?>(
        stream: authService.user,
        builder: (_, AsyncSnapshot<UserMod?> snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            final UserMod? user = snapshot.data;

            return user == null ? SignInScreen() : HomeScreen();
          } else {
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}

// class RouteGenerator {
//   static Route<dynamic>? generateRoute(RouteSettings settings) {
//     final args = settings.arguments;

//     switch (settings.name) {
//       case "/sign_up":
//         return MaterialPageRoute(builder: (_) => SignUpScreen());
//       default:
//     }
//   }
// }



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
