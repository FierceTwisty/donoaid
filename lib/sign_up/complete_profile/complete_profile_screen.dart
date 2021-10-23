import 'package:flutter/material.dart';
import 'package:donoaid/firebase/user_model.dart';
import 'components/body.dart';

class CompleteProfileScreen extends StatelessWidget {
  static String routeName = "/complete_profile";
  @override
  Widget build(BuildContext context) {
    // final UsersDocs args =
    //     ModalRoute.of(context)!.settings.arguments as UsersDocs;
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Body(),
    );
  }
}

// class UsersDocs {
//   final UserMod usr;

//   UsersDocs({required this.usr});
// }
