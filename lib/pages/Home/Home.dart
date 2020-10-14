import 'package:flutter/material.dart';
import './components/SearchInput.dart';
import './components/Categories.dart';
import './components/Products.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          SizedBox(height: 50),
          SearchInput(),
          Categories(),
          Products(),
        ],
      ),
      margin: EdgeInsets.symmetric(horizontal: 20),
    );
  }
}
