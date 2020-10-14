import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  String name;
  String image;
  String provider;
  String price;

  ProductCard({this.name, this.image, this.provider, this.price});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: Column(
            children: [
              Hero(
                tag: this.image,
                child: Image.asset(
                  this.image,
                  height: 100,
                  width: 100,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                this.name,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 30),
              Text(
                this.provider,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 5),
              Text(
                this.price,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
          width: 200,
          height: 260,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            boxShadow: <BoxShadow>[
              BoxShadow(
                offset: Offset(1, 2),
                blurRadius: 5,
                color: Colors.black12,
                spreadRadius: 1,
              ),
            ],
          ),
        ),
        SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
