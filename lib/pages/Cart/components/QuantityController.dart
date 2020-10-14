import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class QuantityController extends StatelessWidget {
  int quantity;
  Function onPressMinus;
  Function onPressPlus;

  QuantityController({this.quantity, this.onPressMinus, this.onPressPlus});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          FlatButton(
            child: Icon(Feather.minus, size: 18),
            onPressed: this.onPressMinus,
          ),
          Text(
            "${this.quantity}",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          FlatButton(
            child: Icon(Feather.plus, size: 18),
            onPressed: onPressPlus,
            padding: EdgeInsets.zero,
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: Offset(1, 2),
            spreadRadius: 1,
            blurRadius: 5,
            color: Colors.black12,
          ),
        ],
      ),
      height: 30,
    );
  }
}
