import 'package:flutter/material.dart';

class CategoryButton2 extends StatelessWidget {
  String image;
  Function onPress;

  CategoryButton2({@required this.image, @required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        child: Center(
          child: Image.asset(
            this.image,
            width: 24,
            height: 24,
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
