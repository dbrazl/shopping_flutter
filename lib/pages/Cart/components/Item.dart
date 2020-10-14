import 'package:flutter/material.dart';
import './QuantityController.dart';

class Item extends StatelessWidget {
  String image;
  String name;
  double priceUnit;
  int quantity;

  Item({this.image, this.name, this.priceUnit, this.quantity});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            child: ClipRRect(
              child: Image.asset(
                this.image,
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  blurRadius: 5,
                  color: Colors.black12,
                  offset: Offset(1, 2),
                  spreadRadius: 1,
                ),
              ],
            ),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 230,
                child: Text(
                  this.name,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(height: 10),
              QuantityController(
                quantity: this.quantity,
                onPressMinus: () {},
                onPressPlus: () {},
              ),
              SizedBox(height: 10),
              Text(
                "R\$ ${this.priceUnit * this.quantity}",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
        ],
      ),
      height: 120,
      margin: EdgeInsets.only(top: 20, bottom: 10),
    );
  }
}
