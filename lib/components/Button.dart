import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  String label;
  Function onPress;

  Button({this.label, this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        child: Text(
          this.label,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        onPressed: this.onPress,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      margin: EdgeInsets.only(top: 10),
    );
  }
}
