import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import './SectionTitle.dart';
import './CategoryButton.dart';
import './CategoryButton2.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionTitle(title: "Categorias"),
          Container(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CategoryButton(icon: Feather.sun, onPress: () {}),
                SizedBox(width: 30),
                CategoryButton(icon: Feather.headphones, onPress: () {}),
                SizedBox(width: 30),
                CategoryButton(
                    icon: SimpleLineIcons.game_controller, onPress: () {}),
                SizedBox(width: 30),
                CategoryButton2(image: "assets/icons/sneakers.png"),
                SizedBox(width: 30),
                CategoryButton(icon: Feather.smartphone, onPress: () {}),
                SizedBox(width: 30),
                CategoryButton(icon: Feather.printer, onPress: () {}),
              ],
              padding: EdgeInsets.all(10),
            ),
            height: 70,
            margin: EdgeInsets.only(top: 20),
          ),
        ],
      ),
      margin: EdgeInsets.symmetric(vertical: 50),
    );
  }
}
