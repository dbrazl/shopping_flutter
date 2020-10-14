import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  String label;
  double marginTop = 0;
  bool obscureText = false;
  Function validator;
  Function onSaved;

  Input(
      {@required this.label,
      @required this.marginTop,
      @required this.obscureText,
      @required this.validator,
      @required this.onSaved});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        keyboardType: TextInputType.text,
        obscureText: this.obscureText,
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
        validator: this.validator,
        onSaved: this.onSaved,
        decoration: InputDecoration(
          labelText: this.label,
          labelStyle: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 18,
          ),
        ),
      ),
      margin: EdgeInsets.only(top: this.marginTop),
    );
  }
}
