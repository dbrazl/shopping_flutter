import 'package:flutter/material.dart';

class SignInWith extends StatelessWidget {
  IconData icon;
  String label;

  SignInWith({@required this.icon, @required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        child: Row(
          children: [
            Icon(this.icon),
            SizedBox(width: 10),
            Text(
              this.label,
              style: TextStyle(fontSize: 18),
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      margin: EdgeInsets.symmetric(vertical: 20),
    );
  }
}
