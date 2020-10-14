import 'package:flutter/material.dart';

class ForgetPaswword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        child: Text(
          "Forget Password?",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 18,
          ),
        ),
      ),
      alignment: Alignment.bottomRight,
    );
  }
}
