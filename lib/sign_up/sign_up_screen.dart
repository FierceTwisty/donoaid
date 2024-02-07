import 'package:donoaid/size_config.dart';
import 'package:flutter/material.dart';
// import 'package:donoaid/theme.dart';
import 'components/body.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "/sign_up";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sign Up",
          textAlign: TextAlign.center,
        ),
      ),
      body: Body(),
    );
  }
}
