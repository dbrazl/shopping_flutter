import 'package:flutter/material.dart';
import './SectionTitle.dart';
import './ProductCard.dart';
import '../../Product/Product.dart';

class Products extends StatelessWidget {
  List<Map<String, dynamic>> products = [
    {
      "id": 1,
      "name": "Cadeira de Escritório Secretária Giratória Fitz Branca",
      "description":
          "Cadeira branca de escritório com tecido de corino. Possui 1,20 m de altura máxima do chão ao assento, e encosto regulável. ",
      "price": "R\$ 579,99",
      "provider": "Mobly",
      "image": "assets/products/chair_1.png",
    },
    {
      "id": 2,
      "name": "Playstation 5",
      "description":
          "Console Playstation 5. Aceitamos seu rins como pagamento.",
      "price": "R\$ 4.899,02",
      "provider": "Sony",
      "image": "assets/products/ps5.png"
    },
    {
      "id": 3,
      "name": "Smart TV Cristal UHD 82\"",
      "description":
          "Processador Cristal UHD. Design sem limites. Múltiplos assistentes pessoais.",
      "price": "R\$ 13.999,00",
      "provider": "Samsung",
      "image": "assets/products/television.png",
    },
    {
      "id": 4,
      "name": "Tenis Sneaker Leve Masculino",
      "description":
          "Sola de PVA reforçado. Tecido flexível. Absorção de impacto com a tecnologia Boost.",
      "price": "R\$ 64,90",
      "provider": "Redento",
      "image": "assets/products/tenis.png",
    }
  ];

  @override
  Widget build(BuildContext context) {
    void goToProduct(int index) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Product(
            name: products[index]['name'],
            description: products[index]['description'],
            provider: products[index]['provider'],
            image: products[index]['image'],
          ),
        ),
      );
    }

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionTitle(title: "Mais vendidos"),
          SizedBox(height: 20),
          Container(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: this.products.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () => goToProduct(index),
                  child: ProductCard(
                    name: products[index]["name"],
                    image: products[index]["image"],
                    provider: products[index]["provider"],
                    price: products[index]["price"],
                  ),
                );
              },
            ),
            height: 300,
            padding: EdgeInsets.all(10),
          ),
        ],
      ),
    );
  }
}
