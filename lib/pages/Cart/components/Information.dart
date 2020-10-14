import 'package:flutter/material.dart';
import './CheckoutButton.dart';

class Information extends StatelessWidget {
  double total;

  Information({this.total});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text(
                "Total",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "R\$ ${this.total}",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
          CheckoutButton(),
        ],
      ),
      height: 80,
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 20),
    );
  }
}
