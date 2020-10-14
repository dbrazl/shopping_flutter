import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Welcome,",
          style: TextStyle(
            color: Colors.black54,
            fontSize: 45,
          ),
          textAlign: TextAlign.left,
        ),
        Container(
          child: Text(
            "Sign in to continue",
            style: TextStyle(
              color: Colors.black54,
              fontSize: 18,
            ),
            textAlign: TextAlign.right,
          ),
          margin: EdgeInsets.only(left: 25),
        ),
      ],
      crossAxisAlignment: CrossAxisAlignment.start,
    );
  }
}
