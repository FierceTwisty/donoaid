import 'package:donoaid/profile/components/donations.dart';
import 'package:flutter/material.dart';


class DonationScreen extends StatelessWidget {
  static String routeName = "/donations";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Donations(),
    );
  }
}