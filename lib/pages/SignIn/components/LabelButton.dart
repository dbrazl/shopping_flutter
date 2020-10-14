import 'package:flutter/material.dart';

class LabelButton extends StatelessWidget {
  String title;
  Function onPress;

  LabelButton({this.title, this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        child: Text(
          this.title,
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 18,
          ),
        ),
        onPressed: this.onPress,
      ),
    );
  }
}
