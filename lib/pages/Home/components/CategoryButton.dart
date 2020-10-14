import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  IconData icon;
  Function onPress;

  CategoryButton({@required this.icon, @required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        child: Center(
          child: Icon(
            this.icon,
            size: 24,
          ),
        ),
        onPressed: this.onPress,
        padding: EdgeInsets.zero,
      ),
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(25)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: Offset(1, 2),
            blurRadius: 5,
            spreadRadius: 1,
            color: Colors.black12,
          ),
        ],
      ),
    );
  }
}
