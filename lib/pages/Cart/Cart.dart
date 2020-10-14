import 'package:flutter/material.dart';
import './components/Information.dart';
import './components/Item.dart';

class Cart extends StatelessWidget {
  double total = 0;

  List<Map<String, dynamic>> cart = [
    {
      "id": 1,
      "name": "Cadeira de Escritório Secretária Giratória Fitz Branca",
      "priceUnit": 579.99,
      "quantity": 1,
      "image": "assets/products/chair_1.png",
    },
    {
      "id": 2,
      "name": "Tenis Sneaker Leve Masculino",
      "priceUnit": 64.90,
      "quantity": 2,
      "image": "assets/products/tenis.png",
    },
    {
      "id": 3,
      "name": "Playstation 5",
      "priceUnit": 4899.02,
      "quantity": 1,
      "image": "assets/products/ps5.png",
    },
    {
      "id": 4,
      "name": "Smart TV Cristal UHD 82\"",
      "priceUnit": 13999.00,
      "quantity": 1,
      "image": "assets/products/television.png",
    }
  ];

  Cart() {
    double total = 0;

    this.cart.forEach((element) {
      total += element["priceUnit"] * element["quantity"];
    });

    this.total = total;
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemCount: this.cart.length,
          itemBuilder: (BuildContext context, int index) {
            return Item(
              image: cart[index]['image'],
              name: cart[index]['name'],
              priceUnit: cart[index]['priceUnit'],
              quantity: cart[index]['quantity'],
            );
          },
        ),
        margin: EdgeInsets.symmetric(horizontal: 20),
        height: height - 150,
      ),
      bottomSheet: Information(total: this.total),
    );
  }
}
