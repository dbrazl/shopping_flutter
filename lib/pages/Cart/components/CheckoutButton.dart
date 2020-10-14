import 'package:flutter/material.dart';

class CheckoutButton extends StatelessWidget {
  Function onPress;

  CheckoutButton({this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        child: Text(
          "CHECKOUT",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        onPressed: this.onPress,
      ),
      width: 150,
      height: 50,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
    );
  }
}
