import 'package:flutter/material.dart';

class Donations extends StatelessWidget {
  const Donations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          //order box
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 20),
                    Expanded(
                      child: Text(
                        "Food",
                        style:
                            TextStyle(fontSize: 19, color: Color(0xFF29B6F6)),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "Qty: 1kg",
                        style:
                            TextStyle(fontSize: 15, color: Color(0xFF29B6F6)),
                      ),
                    ),
                    SizedBox(width: 20),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 20),
                    Expanded(
                      child: Text(
                        "vQcpYlgELWTpa4XLJSU2",
                        style:
                            TextStyle(fontSize: 19, color: Color(0xFF29B6F6)),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "22/10/2021",
                        style: TextStyle(
                          color: Color(0xFF29B6F6),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                  ],
                )
              ],
            ),
          ),

          //order box

          Container(
            decoration: BoxDecoration(
              color: Color(
                0xFFF5F6F9,
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 20),
                    Expanded(
                      child: Text(
                        "Money",
                        style:
                            TextStyle(fontSize: 19, color: Color(0xFF29B6F6)),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "Amt: 1000",
                        style:
                            TextStyle(fontSize: 15, color: Color(0xFF29B6F6)),
                      ),
                    ),
                    SizedBox(width: 20),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 20),
                    Expanded(
                      child: Text(
                        "SivYq7oO1ZcUbzSkPhZE",
                        style:
                            TextStyle(fontSize: 19, color: Color(0xFF29B6F6)),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        "19/10/2021",
                        style: TextStyle(
                          color: Color(0xFF29B6F6),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
