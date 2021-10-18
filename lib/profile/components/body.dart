import 'package:donoaid/firebase/auth_frb.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthServ>(context);
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          // ProfilePic(),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextButton(
              style: TextButton.styleFrom(
                primary: Color(0xFF29B6F6),
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                backgroundColor: Color(0xFFF5F6F9),
              ),
              onPressed: () async {
                await authService.signOut();
                Navigator.pushNamedAndRemoveUntil(
                    context, '/', (route) => false);
              },
              child: Row(
                children: [
                  Icon(
                    Icons.logout,
                    color: kPrimaryColor,
                    size: 22,
                  ),
                  // SvgPicture.asset(
                  //   icon,
                  //   color: kPrimaryColor,
                  //   width: 22,
                  // ),
                  SizedBox(width: 20),
                  Expanded(child: Text("Logout")),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
