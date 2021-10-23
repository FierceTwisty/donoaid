import 'package:donoaid/components/default_button.dart';
import 'package:flutter/material.dart';

class OrderSuccess extends StatelessWidget {
  static String routeName = "/orderdone";

  const OrderSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              child: Icon(
                Icons.done_rounded,
                size: 20,
                color: Colors.greenAccent,
              ),
            ),
            Text(
                "Your Donation is Confirmed and We will reach you in 3-4 business days"),
            DefaultButton(
              text: "Homepage",
              press: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/', (route) => false);
              },
            )
          ],
        ),
      ),
    );
  }
}
